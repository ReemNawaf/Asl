import 'package:asl/a_presentation/a_shared/strings.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:asl/c_domain/relation/i_relation_repository.dart';
import 'package:asl/c_domain/relation/relation.dart';
import 'package:asl/c_domain/relation/relation_failure.dart';
import 'package:asl/d_infrastructure/core/firestore_helpers.dart';
import 'package:asl/d_infrastructure/node/node_dto.dart';
import 'package:asl/d_infrastructure/relation/relation_dto.dart';
import 'package:asl/d_infrastructure/trees/tree_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart' hide Transaction;
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

const String NODES_COLLECTION = 'nodes';
const String RELATIONS_COLLECTION = 'relations';

@LazySingleton(as: IRelationRepository)
class RelationRepository implements IRelationRepository {
  final FirebaseFirestore _firestore;

  RelationRepository(this._firestore);

  @override
  Future<Either<RelationFailure, List<Relation>>> getAll(
    UniqueId treeId,
    UniqueId nodeId,
  ) async {
    try {
      final treeRepo = TreeRepository(_firestore);
      final treeCol = _firestore.treesCollection();

      // Fetch all relations once
      final snapshot = await treeCol
          .doc(treeId.getOrCrash())
          .collection(RELATIONS_COLLECTION)
          .get();

      // Filter only relations that involve this node
      final relevantRelations = snapshot.docs
          .map((doc) => RelationDto.fromFirestore(doc).toDomain())
          .where((relation) =>
              relation.father == nodeId || relation.mother == nodeId)
          .toList();

      // Hydrate partner + children
      final hydratedRelations = <Relation>[];

      for (final relation in relevantRelations) {
        // Partner
        final partnerId =
            relation.father == nodeId ? relation.mother : relation.father;

        final partner = await treeRepo
            .getNode(treeId: relation.partnerTreeId, nodeId: partnerId)
            .then((either) => either.fold((_) => null, (r) => r));

        // Children
        final children = <TNode>[];
        for (final childId in relation.children) {
          final child = await treeRepo
              .getNode(treeId: treeId, nodeId: childId)
              .then((either) => either.fold((_) => null, (r) => r));

          if (child != null) {
            children.add(child);
          }
        }

        hydratedRelations.add(
          relation.copyWith(
            partnerNode: partner,
            childrenNodes: children,
          ),
        );
      }

      return right(hydratedRelations);
    } on FirebaseException catch (e) {
      if (e.message!.contains(PERMISSION_DENIED_CP) ||
          e.message!.contains(PERMISSION_DENIED_SM)) {
        return left(const RelationFailure.insufficientPermission());
      } else if (e.message!.contains(NOT_FOUND_CP) ||
          e.message!.contains(NOT_FOUND_SM)) {
        return left(const RelationFailure.unableToUpdate());
      }
      return left(const RelationFailure.unexpected());
    } catch (_) {
      return left(const RelationFailure.unexpected());
    }
  }

  @override
  Future<Either<RelationFailure, Unit>> create({
    required List<Relation> relationsList,
    required List<TNode> partnersList,
    required TNode node,
  }) async {
    if (relationsList.length != partnersList.length) {
      return left(const RelationFailure.unexpected());
    }

    try {
      final batch = _firestore.batch();
      final treeRef =
          _firestore.treesCollection().doc(node.treeId.getOrCrash());

      final updatedNodeRelations = [...node.relations];

      for (int i = 0; i < relationsList.length; i++) {
        final relation = relationsList[i];
        final partner = partnersList[i];

        // Create Relation
        final relationDto = RelationDto.fromDomain(relation);
        final relationRef = treeRef
            .collection(RELATIONS_COLLECTION)
            .doc(relationDto.relationId);

        batch.set(relationRef, relationDto.toJson());

        // Create Partner Node
        final updatedPartner = partner.copyWith(
          relations: [...partner.relations, relation.relationId],
        );

        final partnerDto = TNodeDto.fromDomain(updatedPartner);
        final partnerRef =
            treeRef.collection(NODES_COLLECTION).doc(partnerDto.nodeId);

        batch.set(partnerRef, partnerDto.toJson());

        // Track relation for main node
        updatedNodeRelations.add(relation.relationId);
      }

      // Update main node once
      final updatedNode = node.copyWith(relations: updatedNodeRelations);
      final nodeDto = TNodeDto.fromDomain(updatedNode);
      final nodeRef = treeRef.collection(NODES_COLLECTION).doc(nodeDto.nodeId);

      batch.update(nodeRef, nodeDto.toJson());

      // Commit
      await batch.commit();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains(PERMISSION_DENIED_CP) ||
          e.message!.contains(PERMISSION_DENIED_SM)) {
        return left(const RelationFailure.insufficientPermission());
      } else if (e.message!.contains(NOT_FOUND_CP) ||
          e.message!.contains(NOT_FOUND_SM)) {
        return left(const RelationFailure.unableToUpdate());
      }
      return left(const RelationFailure.unexpected());
    } catch (_) {
      return left(const RelationFailure.unexpected());
    }
  }

  @override
  Future<Either<RelationFailure, Unit>> createWithExistingPartner({
    required Relation relation,
    required TNode node,
    required UniqueId partnerId,
  }) async {
    try {
      final treeIdVal = relation.treeId.getOrCrash();
      final partnerTreeIdVal = relation.partnerTreeId.getOrCrash();

      // Basic sanity checks (optional but useful)
      if (partnerId == node.nodeId) {
        return left(const RelationFailure.unexpected());
      }

      // Ensure the passed partnerId actually matches relation data (optional)
      final isPartnerInRelation =
          relation.father == partnerId || relation.mother == partnerId;
      if (!isPartnerInRelation) {
        return left(const RelationFailure.unexpected());
      }

      final batch = _firestore.batch();

      // 1) Create relation doc (in relation.treeId)
      final relationDto = RelationDto.fromDomain(relation);
      final relationRef = _firestore
          .treesCollection()
          .doc(treeIdVal)
          .collection(RELATIONS_COLLECTION)
          .doc(relationDto.relationId);

      batch.set(relationRef, relationDto.toJson());

      // 2) Update main node: add relationId to relations array
      final nodeRef = _firestore
          .treesCollection()
          .doc(node.treeId.getOrCrash())
          .collection(NODES_COLLECTION)
          .doc(node.nodeId.getOrCrash());

      batch.update(nodeRef, {
        'relations': FieldValue.arrayUnion([relation.relationId.getOrCrash()]),
      });

      // 3) Update existing partner node: add relationId to relations array
      final partnerRef = _firestore
          .treesCollection()
          .doc(partnerTreeIdVal)
          .collection(NODES_COLLECTION)
          .doc(partnerId.getOrCrash());

      // verify partner exists (so you don't silently create a broken relation)
      final partnerSnap = await partnerRef.get();
      if (!partnerSnap.exists) {
        return left(const RelationFailure.unableToUpdate()); // or unexpected()
      }

      batch.update(partnerRef, {
        'relations': FieldValue.arrayUnion([relation.relationId.getOrCrash()]),
      });

      await batch.commit();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains(PERMISSION_DENIED_CP) ||
          e.message!.contains(PERMISSION_DENIED_SM)) {
        return left(const RelationFailure.insufficientPermission());
      } else if (e.message!.contains(NOT_FOUND_CP) ||
          e.message!.contains(NOT_FOUND_SM)) {
        return left(const RelationFailure.unableToUpdate());
      }
      return left(const RelationFailure.unexpected());
    } catch (_) {
      return left(const RelationFailure.unexpected());
    }
  }

  @override
  Future<Either<RelationFailure, Relation>> get({
    required UniqueId treeId,
    required UniqueId relationId,
  }) async {
    try {
      final doc = await _firestore
          .treesCollection()
          .doc(treeId.getOrCrash())
          .collection(RELATIONS_COLLECTION)
          .doc(relationId.getOrCrash())
          .get();

      if (!doc.exists || doc.data() == null) {
        return left(const RelationFailure.unableToUpdate()); // or notFound()
      }

      return right(RelationDto.fromFirestore(doc).toDomain());
    } on FirebaseException catch (e) {
      if (e.message!.contains(PERMISSION_DENIED_CP) ||
          e.message!.contains(PERMISSION_DENIED_SM)) {
        return left(const RelationFailure.insufficientPermission());
      } else if (e.message!.contains(NOT_FOUND_CP) ||
          e.message!.contains(NOT_FOUND_SM)) {
        return left(const RelationFailure.unableToUpdate());
      }
      return left(const RelationFailure.unexpected());
    } catch (_) {
      return left(const RelationFailure.unexpected());
    }
  }

  @override
  Future<Either<RelationFailure, Unit>> update({
    required TNode partner,
    required Relation relation,
  }) async {
    try {
      final treeIdVal = relation.treeId.getOrCrash();
      final relationIdVal = relation.relationId.getOrCrash();

      final relationRef = _firestore
          .treesCollection()
          .doc(treeIdVal)
          .collection(RELATIONS_COLLECTION)
          .doc(relationIdVal);

      final partnerRef = _firestore
          .treesCollection()
          .doc(treeIdVal)
          .collection(NODES_COLLECTION)
          .doc(partner.nodeId.getOrCrash());

      // Optional: verify relation exists (prevents "not-found" confusion)
      final relationSnap = await relationRef.get();
      if (!relationSnap.exists) {
        return left(const RelationFailure.unableToUpdate());
      }

      final batch = _firestore.batch();

      // Update Relation (keep SAME relationId)
      final relationDto = RelationDto.fromDomain(relation);
      batch.update(relationRef, relationDto.toJson());

      // Update Partner node
      final partnerDto = TNodeDto.fromDomain(partner);
      batch.update(partnerRef, partnerDto.toJson());

      await batch.commit();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains(PERMISSION_DENIED_CP) ||
          e.message!.contains(PERMISSION_DENIED_SM)) {
        return left(const RelationFailure.insufficientPermission());
      } else if (e.message!.contains(NOT_FOUND_CP) ||
          e.message!.contains(NOT_FOUND_SM)) {
        return left(const RelationFailure.unableToUpdate());
      }
      return left(const RelationFailure.unexpected());
    } catch (_) {
      return left(const RelationFailure.unexpected());
    }
  }

  @override
  Future<Either<RelationFailure, Unit>> deleteRelation({
    required List<Relation> relations,
  }) async {
    try {
      if (relations.isEmpty) return right(unit);

      final batch = _firestore.batch();

      // Dedupe sets
      final updatedNodeRefs = <String>{}; // "$treeId/$nodeId/$relationId"
      final handledPartnerRefs = <String>{}; // "$treeId/$partnerId/$relationId"
      final deletedRelationRefs = <String>{}; // "$treeId/$relationId"

      for (final relation in relations) {
        // Only delete relations that have NO children
        if (relation.children.isNotEmpty) {
          return left(const RelationFailure.deleteRelationHasChildren());
        }

        final treeIdVal = relation.treeId.getOrCrash();
        final relationIdVal = relation.relationId.getOrCrash();

        final node = relation.mainNode;
        final partner = relation.partnerNode;

        if (node == null || partner == null) {
          return left(const RelationFailure.unableToUpdate());
        }

        // -----------------------------
        // 1) Remove relation from main node
        // -----------------------------
        final nodeIdVal = node.nodeId.getOrCrash();
        final nodeRef = _firestore
            .treesCollection()
            .doc(treeIdVal)
            .collection(NODES_COLLECTION)
            .doc(nodeIdVal);

        final nodeUpdateKey = "$treeIdVal/$nodeIdVal/$relationIdVal";
        if (!updatedNodeRefs.contains(nodeUpdateKey)) {
          batch.update(nodeRef, {
            'relations': FieldValue.arrayRemove([relationIdVal]),
          });
          updatedNodeRefs.add(nodeUpdateKey);
        }

        // -----------------------------
        // 2) Handle partner (unlink or delete)
        // -----------------------------
        final partnerTreeIdVal = partner.treeId.getOrCrash();
        final partnerIdVal = partner.nodeId.getOrCrash();

        final partnerRef = _firestore
            .treesCollection()
            .doc(partnerTreeIdVal)
            .collection(NODES_COLLECTION)
            .doc(partnerIdVal);

        final partnerKey = "$partnerTreeIdVal/$partnerIdVal/$relationIdVal";
        if (!handledPartnerRefs.contains(partnerKey)) {
          if (partner.upperFamily != null) {
            // Partner has another family → just unlink relation
            batch.update(partnerRef, {
              'relations': FieldValue.arrayRemove([relationIdVal]),
            });
          } else {
            // Partner is orphan → delete node
            batch.delete(partnerRef);
          }
          handledPartnerRefs.add(partnerKey);
        }

        // -----------------------------
        // 3) Delete relation doc
        // -----------------------------
        final relationRef = _firestore
            .treesCollection()
            .doc(treeIdVal)
            .collection(RELATIONS_COLLECTION)
            .doc(relationIdVal);

        final relKey = "$treeIdVal/$relationIdVal";
        if (!deletedRelationRefs.contains(relKey)) {
          batch.delete(relationRef);
          deletedRelationRefs.add(relKey);
        }
      }

      // If everything was skipped (all had children / invalid), do nothing but succeed
      if (updatedNodeRefs.isEmpty &&
          handledPartnerRefs.isEmpty &&
          deletedRelationRefs.isEmpty) {
        return right(unit);
      }

      await batch.commit();
      return right(unit);
    } on FirebaseException catch (e) {
      final msg = e.message ?? '';
      if (msg.contains(PERMISSION_DENIED_CP) ||
          msg.contains(PERMISSION_DENIED_SM)) {
        return left(const RelationFailure.insufficientPermission());
      } else if (msg.contains(NOT_FOUND_CP) || msg.contains(NOT_FOUND_SM)) {
        return left(const RelationFailure.unableToUpdate());
      }
      return left(const RelationFailure.unexpected());
    } catch (_) {
      return left(const RelationFailure.unexpected());
    }
  }

  @override
  Future<Either<RelationFailure, Unit>> deleteChildren({
    required List<TNode> children,
  }) async {
    try {
      if (children.isEmpty) return right(unit);

      final batch = _firestore.batch();

      for (final child in children) {
        final treeIdVal = child.treeId.getOrCrash();
        final childIdVal = child.nodeId.getOrCrash();

        final upper = child.upperFamily;
        if (upper == null) continue; // or return left(unexpected)

        final relationIdVal = upper.getOrCrash();

        final relationRef = _firestore
            .treesCollection()
            .doc(treeIdVal)
            .collection(RELATIONS_COLLECTION)
            .doc(relationIdVal);

        final childRef = _firestore
            .treesCollection()
            .doc(treeIdVal)
            .collection(NODES_COLLECTION)
            .doc(childIdVal);

        batch.update(relationRef, {
          'children': FieldValue.arrayRemove([childIdVal]),
        });
        batch.delete(childRef);
      }

      await batch.commit();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message != null &&
          (e.message!.contains(PERMISSION_DENIED_CP) ||
              e.message!.contains(PERMISSION_DENIED_SM))) {
        return left(const RelationFailure.insufficientPermission());
      } else if (e.message != null &&
          (e.message!.contains(NOT_FOUND_CP) ||
              e.message!.contains(NOT_FOUND_SM))) {
        return left(const RelationFailure.unableToUpdate());
      }
      return left(const RelationFailure.unexpected());
    } catch (_) {
      return left(const RelationFailure.unexpected());
    }
  }

  @override
  Future<Either<TNodeFailure, Unit>> addChildren({
    required List<TNode> children,
  }) async {
    try {
      if (children.isEmpty) return left(const TNodeFailure.unableToUpdate());
      final treeIdVal = children[0].treeId.getOrCrash();
      final batch = _firestore.batch();

      for (final child in children) {
        if (child.upperFamily == null) {
          return left(const TNodeFailure.unexpected());
        }

        final childId = child.nodeId.getOrCrash();
        final relationId = child.upperFamily!.getOrCrash();

        final childRef = _firestore
            .treesCollection()
            .doc(treeIdVal)
            .collection(NODES_COLLECTION)
            .doc(childId);

        final relationRef = _firestore
            .treesCollection()
            .doc(treeIdVal)
            .collection(RELATIONS_COLLECTION)
            .doc(relationId);

        // Create child node
        final childDto = TNodeDto.fromDomain(child);
        batch.set(childRef, childDto.toJson());

        // Attach child to relation
        batch.update(relationRef, {
          'children': FieldValue.arrayUnion([childId]),
        });
      }

      await batch.commit();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains(PERMISSION_DENIED_CP) ||
          e.message!.contains(PERMISSION_DENIED_SM)) {
        return left(const TNodeFailure.insufficientPermission());
      } else if (e.message!.contains(NOT_FOUND_CP) ||
          e.message!.contains(NOT_FOUND_SM)) {
        return left(const TNodeFailure.unableToUpdate());
      }
      return left(const TNodeFailure.unexpected());
    } catch (_) {
      return left(const TNodeFailure.unexpected());
    }
  }
}

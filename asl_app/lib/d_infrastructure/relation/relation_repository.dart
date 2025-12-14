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

        final partnerDto = NodeDto.fromDomain(updatedPartner);
        final partnerRef =
            treeRef.collection(NODES_COLLECTION).doc(partnerDto.nodeId);

        batch.set(partnerRef, partnerDto.toJson());

        // Track relation for main node
        updatedNodeRelations.add(relation.relationId);
      }

      // Update main node once
      final updatedNode = node.copyWith(relations: updatedNodeRelations);
      final nodeDto = NodeDto.fromDomain(updatedNode);
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
      final partnerDto = NodeDto.fromDomain(partner);
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
  Future<Either<RelationFailure, Unit>> deleteRelationAndChildren({
    required UniqueId treeId,
    required Relation relation,
    required TNode partner,
    required TNode node,
  }) async {
    try {
      final treeIdVal = treeId.getOrCrash();
      final relationIdVal = relation.relationId.getOrCrash();

      final batch = _firestore.batch();

      final nodeRef = _firestore
          .treesCollection()
          .doc(treeIdVal)
          .collection(NODES_COLLECTION)
          .doc(node.nodeId.getOrCrash());

      final relationRef = _firestore
          .treesCollection()
          .doc(treeIdVal)
          .collection(RELATIONS_COLLECTION)
          .doc(relationIdVal);

      // Remove relation from main node
      batch.update(nodeRef, {
        'relations': FieldValue.arrayRemove([relationIdVal]),
      });

      // Handle partner
      final partnerTreeId = partner.treeId.getOrCrash();
      final partnerRef = _firestore
          .treesCollection()
          .doc(partnerTreeId)
          .collection(NODES_COLLECTION)
          .doc(partner.nodeId.getOrCrash());

      if (partner.upperFamily != null) {
        // Partner has another family → just unlink relation
        batch.update(partnerRef, {
          'relations': FieldValue.arrayRemove([relationIdVal]),
        });
      } else {
        // Partner is orphan → delete node
        batch.delete(partnerRef);
      }

      // Delete children nodes (explicit & safe)
      for (final childId in relation.children) {
        final childRef = _firestore
            .treesCollection()
            .doc(treeIdVal)
            .collection(NODES_COLLECTION)
            .doc(childId.getOrCrash());

        batch.delete(childRef);
      }

      // Delete relation itself
      batch.delete(relationRef);

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
  Future<Either<RelationFailure, Unit>> deleteChild({
    required UniqueId treeId,
    required UniqueId relationId,
    required TNode child,
  }) async {
    try {
      final treeIdVal = treeId.getOrCrash();
      final relationIdVal = relationId.getOrCrash();
      final childIdVal = child.nodeId.getOrCrash();

      final batch = _firestore.batch();

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

      // Remove child from relation
      batch.update(relationRef, {
        'children': FieldValue.arrayRemove([childIdVal]),
      });

      // Delete child node
      batch.delete(childRef);

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
  Future<Either<TNodeFailure, Unit>> addChildren({
    required UniqueId treeId,
    required List<TNode> children,
  }) async {
    try {
      final treeIdVal = treeId.getOrCrash();
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
        final childDto = NodeDto.fromDomain(child);
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

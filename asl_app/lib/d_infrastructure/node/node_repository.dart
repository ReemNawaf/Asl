import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/i_node_repository.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:asl/c_domain/relation/half_siblings.dart';
import 'package:asl/c_domain/relation/relation.dart';
import 'package:asl/c_domain/relation/ufamily.dart';
import 'package:asl/d_infrastructure/core/firestore_helpers.dart';
import 'package:asl/d_infrastructure/node/node_dto.dart';
import 'package:asl/d_infrastructure/relation/relation_dto.dart';
import 'package:asl/d_infrastructure/relation/relation_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart' hide Transaction;
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

const String NODES_COLLECTION = 'nodes';
const String RELATIONS_COLLECTION = 'relations';

@LazySingleton(as: INodeRepository)
class NodeRepository implements INodeRepository {
  final FirebaseFirestore _firestore;

  NodeRepository(this._firestore);
  @override
  Stream<Either<TNodeFailure, List<TNode>>> watchAll(UniqueId treeId) async* {
    final treeCol = _firestore.treesCollection();
    final nodesSnapshot = treeCol
        .doc(treeId.getOrCrash())
        .collection(NODES_COLLECTION)
        .snapshots();

    yield* nodesSnapshot
        .map((snapshot) => right<TNodeFailure, List<TNode>>(snapshot.docs
            .map((doc) => NodeDto.fromFirestore(doc).toDomain())
            .toList()))
        .handleError((e) {
      if (e is FirebaseException &&
          (e.message!.contains('PERMISSION_DENIED') ||
              e.message!.contains('permission-denied'))) {
        return left(const TNodeFailure.insufficientPermission());
      } else {
        return left(const TNodeFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<TNodeFailure, TNode>> getNode(
      {required UniqueId treeId, required UniqueId nodeId}) async {
    try {
      // final userDoc = await _firestore.userDocument();

      final node = await _firestore
          .treesCollection()
          .doc(treeId.getOrCrash())
          .collection(NODES_COLLECTION)
          .doc(nodeId.getOrCrash())
          .get();

      if (node.data() == null) {
        return left(const TNodeFailure.nodeNotExist());
      }
      return right(NodeDto.fromFirestore(node).toDomain());
    } on PlatformException catch (e) {
      if (e is FirebaseException &&
          (e.message!.contains('PERMISSION_DENIED') ||
              e.message!.contains('permission-denied'))) {
        return left(const TNodeFailure.insufficientPermission());
      } else {
        return left(const TNodeFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TNodeFailure, Unit>> create(
      {required TNode node, required UniqueId treeId}) async {
    try {
      final nodeDto = NodeDto.fromDomain(node.copyWith(nodeId: node.nodeId));

      await _firestore
          .treesCollection()
          .doc(treeId.getOrCrash())
          .collection(NODES_COLLECTION)
          .doc(nodeDto.nodeId)
          .set(nodeDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e is FirebaseException &&
          (e.message!.contains('PERMISSION_DENIED') ||
              e.message!.contains('permission-denied'))) {
        return left(const TNodeFailure.insufficientPermission());
      } else {
        return left(const TNodeFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TNodeFailure, Unit>> update(
      {required TNode node, required UniqueId treeId}) async {
    try {
      final nodeDto = NodeDto.fromDomain(node.copyWith(nodeId: node.nodeId));
      await _firestore
          .treesCollection()
          .doc(treeId.getOrCrash())
          .collection(NODES_COLLECTION)
          .doc(nodeDto.nodeId)
          .update(nodeDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e is FirebaseException &&
          (e.message!.contains('PERMISSION_DENIED') ||
              e.message!.contains('permission-denied'))) {
        return left(const TNodeFailure.insufficientPermission());
      } else if (e is FirebaseException &&
          (e.message!.contains('NOT_FOUND') ||
              e.message!.contains('not-found'))) {
        return left(const TNodeFailure.unableToUpdate());
      } else {
        return left(const TNodeFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TNodeFailure, Unit>> delete(
      {required UniqueId nodeId, required UniqueId treeId}) async {
    try {
      final nodeIdVal = nodeId.getOrCrash();
      final treeIdVal = treeId.getOrCrash();

      await _firestore
          .treesCollection()
          .doc(treeIdVal)
          .collection(NODES_COLLECTION)
          .doc(nodeIdVal)
          .delete();

      return right(unit);
    } on PlatformException catch (e) {
      if (e is FirebaseException &&
          (e.message!.contains('PERMISSION_DENIED') ||
              e.message!.contains('permission-denied'))) {
        return left(const TNodeFailure.insufficientPermission());
      } else if (e is FirebaseException &&
          (e.message!.contains('NOT_FOUND') ||
              e.message!.contains('not-found'))) {
        return left(const TNodeFailure.unableToUpdate());
      } else {
        return left(const TNodeFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TNodeFailure, Ufamily>> getNodeUpperFamily(
      {required TNode node}) async {
    try {
      final relationRepository = RelationRepository(_firestore);
      final treeId = node.treeId;

      // 1. Get the upperfamily relation

      final upperFamilyEither = await relationRepository.getRelation(
          treeId: treeId, relationId: node.upperFamily!);
      Relation? upperFamily;
      upperFamilyEither.fold((l) {}, (r) async => upperFamily = r);
      // if for some reason upperfamily isn't fetched correctly return error
      if (node.upperFamily == null) {
        return left(const TNodeFailure.unexpected());
      }

      // 2. get father & mother node from the relation

      final fatherEither =
          await getNode(treeId: treeId, nodeId: upperFamily!.father);
      TNode? father;
      fatherEither.fold((l) {}, (r) => father = r);
      if (father == null) {
        return left(const TNodeFailure.unexpected());
      }

      final motherEither =
          await getNode(treeId: treeId, nodeId: upperFamily!.mother);
      TNode? mother;
      motherEither.fold((l) {}, (r) => mother = r);
      if (mother == null) {
        return left(const TNodeFailure.unexpected());
      }

      // 3. get children nodes from the relation (Siblings)
      final List<TNode> siblings = [];

      for (UniqueId id in upperFamily!.children) {
        (await getNode(treeId: treeId, nodeId: id)).fold((l) {}, (r) {
          if (node.nodeId != r.nodeId) {
            // to not and the main node as siblings
            siblings.add(r);
          }
        });
      }

      // 4. get children from father other relations (Father side Brother & Sisters)
      List<HalfSiblings> fatherHalfSiblings = [];
      for (UniqueId id in father!.relations) {
        // first get the relation
        Relation? relation;
        (await relationRepository.getRelation(treeId: treeId, relationId: id))
            .fold((l) {}, (r) => relation = r);

        // if the relation is the same as relation with mother and father then pass
        if (relation == null ||
            relation!.relationId == upperFamily!.relationId) {
          continue;
        }

        // get the partner node
        TNode? stepMother;
        (await getNode(treeId: treeId, nodeId: relation!.mother))
            .fold((l) {}, (r) => stepMother = r);

        if (stepMother == null) {
          return left(const TNodeFailure.unexpected());
        }

        List<TNode> children = [];
        // then get the children nodes
        for (UniqueId id in relation!.children) {
          (await getNode(treeId: treeId, nodeId: id))
              .fold((l) {}, (r) => children.add(r));
        }

        fatherHalfSiblings.add(
          HalfSiblings(
            treeId: treeId,
            person: node.nodeId,
            partner: stepMother!,
            halfSiblings: children,
          ),
        );
      }

      // 5. get children from mother other relations (Mother side Brother & Sisters)
      List<HalfSiblings> motherHalfSiblings = [];
      for (UniqueId id in mother!.relations) {
        // first get the relation
        Relation? relation;
        (await relationRepository.getRelation(treeId: treeId, relationId: id))
            .fold((l) {}, (r) => relation = r);

        // if the relation is the same as relation with mother and father then pass
        if (relation == null ||
            relation!.relationId == upperFamily!.relationId) {
          continue;
        }

        // get the partner node
        TNode? stepFather;
        (await getNode(treeId: treeId, nodeId: relation!.father))
            .fold((l) {}, (r) => stepFather = r);

        if (stepFather == null) {
          return left(const TNodeFailure.unexpected());
        }

        List<TNode> children = [];
        // then get the children nodes
        for (UniqueId id in relation!.children) {
          (await getNode(treeId: treeId, nodeId: id))
              .fold((l) {}, (r) => children.add(r));
        }

        motherHalfSiblings.add(
          HalfSiblings(
            treeId: treeId,
            person: node.nodeId,
            partner: stepFather!,
            halfSiblings: children,
          ),
        );
      }

      final upperFaimly = Ufamily(
        treeId: treeId,
        father: father!,
        mother: mother!,
        person: node,
        siblings: siblings,
        fatherHalfSiblings: fatherHalfSiblings,
        motherHalfSiblings: motherHalfSiblings,
      );

      return right(upperFaimly);
    } catch (e) {
      if (e is FirebaseException &&
          (e.message!.contains('PERMISSION_DENIED') ||
              e.message!.contains('permission-denied'))) {
        return left(const TNodeFailure.insufficientPermission());
      } else {
        return left(const TNodeFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TNodeFailure, TNode>> getTree({
    required UniqueId treeId,
    required UniqueId rootId,
    int? maxGenerations, // null = full tree
  }) async {
    try {
      final visited = <String>{};

      final result = await _loadNodeRecursively(
        treeId: treeId,
        nodeId: rootId,
        visited: visited,
        remainingGenerations: maxGenerations,
      );

      return right(result);
    } catch (e) {
      if (e is FirebaseException &&
          (e.message?.contains('PERMISSION_DENIED') ?? false)) {
        return left(const TNodeFailure.insufficientPermission());
      }
      return left(const TNodeFailure.unexpected());
    }
  }

  /// ----------------------------------------------
  ///        RECURSIVE LOADER FUNCTION
  /// ----------------------------------------------
  Future<TNode> _loadNodeRecursively({
    required UniqueId treeId,
    required UniqueId nodeId,
    required Set<String> visited,
    required int? remainingGenerations, // null = unlimited depth
  }) async {
    final nodeKey = nodeId.getOrCrash();

    // Prevent infinite loops
    if (visited.contains(nodeKey)) {
      return (await getNode(treeId: treeId, nodeId: nodeId))
          .getOrElse(() => throw Exception("Node not found"));
    }

    visited.add(nodeKey);

    // Load this node
    final eitherNode = await getNode(treeId: treeId, nodeId: nodeId);
    final node = eitherNode.getOrElse(() => throw Exception("Node not found"));

    // Load relations
    final relations = await _loadRelations(treeId, node.relations);

    // If no more generations requested → stop here
    if (remainingGenerations == 0) {
      return node.copyWith(relationsObject: relations);
    }

    final nextRemaining =
        remainingGenerations == null ? null : remainingGenerations - 1;

    final updatedRelations = <Relation>[];

    for (final relation in relations) {
      // Partner
      final partnerId =
          relation.father == node.nodeId ? relation.mother : relation.father;

      final partner = await _loadPartnerSafely(
        treeId,
        relation.partnerTreeId,
        partnerId,
      );

      // Children
      final children = <TNode>[];

      for (final childId in relation.children) {
        final childNode = await _loadNodeRecursively(
          treeId: treeId,
          nodeId: childId,
          visited: visited,
          remainingGenerations: nextRemaining,
        );
        children.add(childNode);
      }

      updatedRelations.add(
        relation.copyWith(
          partnerNode: partner,
          childrenNodes: children,
        ),
      );
    }

    return node.copyWith(relationsObject: updatedRelations);
  }

  /// ----------------------------------------------
  ///      HELPERS
  /// ----------------------------------------------
  Future<List<Relation>> _loadRelations(
      UniqueId treeId, List<UniqueId> relationIds) async {
    final col = _firestore.treesCollection();
    final list = <Relation>[];
    for (final id in relationIds) {
      final doc = await col
          .doc(treeId.getOrCrash())
          .collection(RELATIONS_COLLECTION)
          .doc(id.getOrCrash())
          .get();
      list.add(RelationDto.fromFirestore(doc).toDomain());
    }
    return list;
  }

  Future<TNode?> _loadPartnerSafely(
      UniqueId rootTreeId, UniqueId partnerTreeId, UniqueId partnerId) async {
    final either = await getNode(treeId: partnerTreeId, nodeId: partnerId);
    return either.fold((_) => null, (r) => r);
  }
}

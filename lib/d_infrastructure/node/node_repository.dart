import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/i_node_repository.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:asl/c_domain/relation/half_siblings.dart';
import 'package:asl/c_domain/relation/relation.dart';
import 'package:asl/c_domain/relation/relation_failure.dart';
import 'package:asl/c_domain/relation/ufamily.dart';
import 'package:asl/d_infrastructure/core/firestore_helpers.dart';
import 'package:asl/d_infrastructure/node/node_dto.dart';
import 'package:asl/d_infrastructure/relation/relation_dto.dart';
import 'package:asl/d_infrastructure/relation/relation_repository.dart';
import 'package:asl/d_infrastructure/trees/tree_dtos.dart';
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
  Future<Either<TNodeFailure, TNode>> getTree(
      {required UniqueId treeId, required UniqueId rootId}) async {
    try {
      final treeCol = _firestore.treesCollection();

      // 1. Get the tree
      final treeDoc = await treeCol.doc(treeId.getOrCrash()).get()
          as DocumentSnapshot<Map<String, dynamic>>;
      final tree = TreeDto.fromFirestore(treeDoc).toDomain();
      print('LOG | get the tree');

      // 2. Get the root node
      TNode root = (await getNode(treeId: treeId, nodeId: rootId))
          .fold((l) => left(RelationFailure), (r) => r) as TNode;

      // 3. Get the root relations
      final rootRelations = <Relation>[];
      for (UniqueId relationId in root.relations) {
        final relationDoc = await treeCol
            .doc(treeId.getOrCrash())
            .collection(RELATIONS_COLLECTION)
            .doc(relationId.getOrCrash())
            .get();

        final relation = RelationDto.fromFirestore(relationDoc).toDomain();
        rootRelations.add(relation);
      }
      print('LOG | get the root relations ${rootRelations.length}');

      // 4. Get the partners nodes
      for (int i = 0; i < rootRelations.length; i++) {
        final re = rootRelations[i];
        final partner = re.father == root.nodeId ? re.mother : re.father;
        final eitherpartnerNode =
            await getNode(treeId: re.partnerTreeId, nodeId: partner);

        rootRelations[i] = re.copyWith(
            partnerNode: eitherpartnerNode.fold((l) => null, (r) => r));
      }
      print('LOG | get the partners nodes');

      // 5. Get the children nodes
      for (int i = 0; i < rootRelations.length; i++) {
        final childrenIds = rootRelations[i].children;
        final children = <TNode>[];

        for (int i = 0; i < childrenIds.length; i++) {
          final childId = childrenIds[i];
          final eitherChildNode =
              await getNode(treeId: tree.treeId, nodeId: childId);

          await eitherChildNode.fold((l) => null, (child) async {
            // 3. Get the child relations
            final childRelations = <Relation>[];
            for (UniqueId relationId in child.relations) {
              final relationDoc = await treeCol
                  .doc(treeId.getOrCrash())
                  .collection(RELATIONS_COLLECTION)
                  .doc(relationId.getOrCrash())
                  .get();
              final relation =
                  RelationDto.fromFirestore(relationDoc).toDomain();
              childRelations.add(relation);
            }

            // 4. Get the partners nodes
            for (int i = 0; i < childRelations.length; i++) {
              final re = childRelations[i];
              final partner = re.father == child.nodeId ? re.mother : re.father;
              final eitherpartnerNode =
                  await getNode(treeId: re.partnerTreeId, nodeId: partner);
              childRelations[i] = re.copyWith(
                  partnerNode: eitherpartnerNode.fold((l) => null, (r) => r));
            }

            // 5. Get the grandchildren nodes
            for (int i = 0; i < childRelations.length; i++) {
              final grandchildrenIds = childRelations[i].children;
              final grandchildren = <TNode>[];

              for (int i = 0; i < grandchildrenIds.length; i++) {
                final grandchildId = grandchildrenIds[i];
                final eitherGrandChildNode =
                    await getNode(treeId: tree.treeId, nodeId: grandchildId);
                eitherGrandChildNode.fold((l) => null, (r) {
                  grandchildren.add(r);
                });
              }
              childRelations[i] =
                  childRelations[i].copyWith(childrenNodes: grandchildren);
            }
            print('LOG | childRelations');
            children.add(child.copyWith(relationsObject: childRelations));
          });
        }
        rootRelations[i] = rootRelations[i].copyWith(childrenNodes: children);
      }
      print('LOG | get the children nodes');

      // Update the root relationsObject
      root = root.copyWith(relationsObject: rootRelations);
      print('LOG | update the root relationsObject');
      print('LOG | root ${root.firstName}');
      //
      return right(root);
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
}

import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/i_node_repository.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:asl/c_domain/relation/relation.dart';
import 'package:asl/c_domain/relation/relation_failure.dart';
import 'package:asl/d_infrastructure/core/firestore_helpers.dart';
import 'package:asl/d_infrastructure/node/node_dto.dart';
import 'package:asl/d_infrastructure/relation/relation_dto.dart';
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
  Future<Either<TNodeFailure, TNode>> getTree(UniqueId treeId) async {
    try {
      final nodeRepo = NodeRepository(_firestore);
      final treeCol = _firestore.treesCollection();

      print('N1');
      // 1. Get the tree
      final treeDoc = await treeCol.doc(treeId.getOrCrash()).get()
          as DocumentSnapshot<Map<String, dynamic>>;
      final tree = TreeDto.fromFirestore(treeDoc).toDomain();
      print('N11');

      // 2. Get the root node
      TNode root = (await nodeRepo.getNode(treeId: treeId, nodeId: tree.rootId))
          .fold((l) => left(RelationFailure), (r) => r) as TNode;
      print('N2');
      // 3. Get the root relations
      final rootRelations = <Relation>[];
      for (UniqueId relationId in root.relations) {
        final relationDoc = await treeCol
            .doc(treeId.getOrCrash())
            .collection(RELATIONS_COLLECTION)
            .doc(relationId.getOrCrash())
            .get();
        print('N3');
        final relation = RelationDto.fromFirestore(relationDoc).toDomain();
        rootRelations.add(relation);
        print('N33');
      }
      root = root.copyWith(relationsObject: rootRelations);
      print('N333');
      // 4. Get the partners nodes
      for (int i = 0; i < rootRelations.length; i++) {
        final re = rootRelations[i];
        final partner = re.father == root.nodeId ? re.mother : re.father;
        final eitherpartnerNode =
            await nodeRepo.getNode(treeId: re.partnerTreeId, nodeId: partner);
        print('N4');
        rootRelations[i] = re.copyWith(
            partnerNode: eitherpartnerNode.fold((l) => null, (r) => r));
      }
      print('N44');

      // 5. Get the children nodes
      for (int i = 0; i < rootRelations.length; i++) {
        final childrenIds = rootRelations[i].children;
        final children = <TNode>[];
        print('N5');
        for (int i = 0; i < childrenIds.length; i++) {
          final childId = childrenIds[i];
          final eitherChildNode =
              await nodeRepo.getNode(treeId: tree.treeId, nodeId: childId);
          print('N55');
          eitherChildNode.fold((l) => null, (r) {
            children.add(r);
          });
        }
        rootRelations[i] = rootRelations[i].copyWith(childrenNodes: children);
        print('N555');
      }

      // 6. Repeat [3-5] for each child

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
}

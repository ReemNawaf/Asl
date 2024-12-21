import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/i_node_repository.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:asl/d_infrastructure/core/firestore_helpers.dart';
import 'package:asl/d_infrastructure/node/node_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart' hide Transaction;
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

const String NODES_COLLECTION = 'nodes';

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

      final node = _firestore
          .treesCollection()
          .doc(treeId.getOrCrash())
          .collection(NODES_COLLECTION)
          .doc(nodeId.getOrCrash())
          .get() as DocumentSnapshot<Map<String, dynamic>>;

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
}

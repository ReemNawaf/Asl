import 'package:asl/a_presentation/a_shared/strings.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/i_node_repository.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:asl/d_infrastructure/core/firestore_helpers.dart';
import 'package:asl/d_infrastructure/node/node_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart' hide Transaction;
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

const String NODES_COLLECTION = 'nodes';
const String RELATIONS_COLLECTION = 'relations';

@LazySingleton(as: INodeRepository)
class NodeRepository implements INodeRepository {
  final FirebaseFirestore _firestore;

  NodeRepository(this._firestore);

  @override
  Future<Either<TNodeFailure, Unit>> create({
    required TNode node,
    required UniqueId treeId,
  }) async {
    try {
      final nodeId = node.nodeId.getOrCrash();

      final docRef = _firestore
          .treesCollection()
          .doc(treeId.getOrCrash())
          .collection(NODES_COLLECTION)
          .doc(nodeId);

      // Optional safety check: prevent overwriting an existing node
      final existing = await docRef.get();
      if (existing.exists) {
        return left(const TNodeFailure.unableToUpdate());
      }

      final nodeDto = TNodeDto.fromDomain(node);

      await docRef.set(nodeDto.toJson());

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

  @override
  Future<Either<TNodeFailure, Unit>> update({
    required TNode node,
    required UniqueId treeId,
  }) async {
    try {
      final nodeId = node.nodeId.getOrCrash();

      final docRef = _firestore
          .treesCollection()
          .doc(treeId.getOrCrash())
          .collection(NODES_COLLECTION)
          .doc(nodeId);

      // Safety check: ensure node exists before update
      final existing = await docRef.get();
      if (!existing.exists) {
        return left(const TNodeFailure.unableToUpdate());
      }

      final nodeDto = TNodeDto.fromDomain(node);

      await docRef.update(nodeDto.toJson());

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

import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/strings.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/i_node_repository.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:asl/d_infrastructure/core/firestore_helpers.dart';
import 'package:asl/d_infrastructure/node/node_dto.dart';
import 'package:asl/d_infrastructure/relation/relation_dto.dart';
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
  Future<Either<TNodeFailure, Unit>> changeOrderInFamily({
    required UniqueId nodeId,
    required UniqueId relationId,
    required int order,
    required UniqueId treeId,
  }) async {
    try {
      final relationDocRef = _firestore
          .treesCollection()
          .doc(treeId.getOrCrash())
          .collection(RELATIONS_COLLECTION)
          .doc(relationId.getOrCrash());

      final existing = await relationDocRef.get();
      if (!existing.exists) {
        return left(const TNodeFailure.unableToUpdate());
      }

      final relation = RelationDto.fromFirestore(existing).toDomain();
      final currentChildren = List<UniqueId>.from(relation.children);

      final nodeIdVal = nodeId.getOrCrash();

      // Find the current index of the nodeId in the children list
      final currentIndex = currentChildren.indexWhere(
        (id) => id.getOrCrash() == nodeIdVal,
      );

      if (currentIndex == -1) {
        // Node not found in children list
        return left(const TNodeFailure.unableToUpdate());
      }

      // Remove from current position
      currentChildren.removeAt(currentIndex);

      // Clamp order to valid range (0 to list length)
      final clampedOrder = order.clamp(0, currentChildren.length);

      // Insert at new position
      currentChildren.insert(clampedOrder, nodeId);

      // Convert back to list of strings for Firestore
      final reorderedChildren =
          currentChildren.map((id) => id.getOrCrash()).toList();

      // Update the relation document with the reordered children array
      await relationDocRef.update({
        'children': reorderedChildren,
      });

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
  Future<Either<TNodeFailure, Unit>> changePartnerOrder({
    required UniqueId nodeId,
    required UniqueId relationId,
    required int order,
    required UniqueId treeId,
  }) async {
    try {
      final nodeDocRef = _firestore
          .treesCollection()
          .doc(treeId.getOrCrash())
          .collection(NODES_COLLECTION)
          .doc(nodeId.getOrCrash());

      final existing = await nodeDocRef.get();
      if (!existing.exists) {
        return left(const TNodeFailure.unableToUpdate());
      }

      final node = TNodeDto.fromFirestore(existing).toDomain();
      final currentRelations = List<UniqueId>.from(node.relations);

      final relationIdVal = relationId.getOrCrash();

      // Find the current index of the relationId in the relations list
      final currentIndex = currentRelations.indexWhere(
        (id) => id.getOrCrash() == relationIdVal,
      );

      if (currentIndex == -1) {
        // Relation not found in node's relations list
        return left(const TNodeFailure.unableToUpdate());
      }

      // Remove from current position
      currentRelations.removeAt(currentIndex);

      // Clamp order to valid range (0 to list length)
      final clampedOrder = order.clamp(0, currentRelations.length);

      // Insert at new position
      currentRelations.insert(clampedOrder, relationId);

      // Convert back to list of strings for Firestore
      final reorderedRelations =
          currentRelations.map((id) => id.getOrCrash()).toList();

      // Update the node document with the reordered relations array
      await nodeDocRef.update({
        'relations': reorderedRelations,
      });

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
  Future<Either<TNodeFailure, Unit>> changePartnerMarriageStatus({
    required UniqueId treeId,
    required UniqueId relationId,
    required MarriageStatus status,
  }) async {
    try {
      print('changePartnerMarriageStatus: $treeId, $relationId, $status');

      final relationDocRef = _firestore
          .treesCollection()
          .doc(treeId.getOrCrash())
          .collection(RELATIONS_COLLECTION)
          .doc(relationId.getOrCrash());

      final existing = await relationDocRef.get();
      if (!existing.exists) {
        return left(const TNodeFailure.unableToUpdate());
      }

      // Update the relation document with the new marriage status
      // Store as string (enum name) to match RelationDto format
      await relationDocRef.update({
        'marriageStatus': status.name,
      });

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

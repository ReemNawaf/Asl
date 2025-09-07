import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:asl/c_domain/relation/i_relation_repository.dart';
import 'package:asl/c_domain/relation/relation.dart';
import 'package:asl/c_domain/relation/relation_failure.dart';
import 'package:asl/d_infrastructure/core/firestore_helpers.dart';
import 'package:asl/d_infrastructure/node/node_dto.dart';
import 'package:asl/d_infrastructure/node/node_repository.dart';
import 'package:asl/d_infrastructure/relation/relation_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart' hide Transaction;
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

const String NODES_COLLECTION = 'nodes';
const String RELATIONS_COLLECTION = 'relations';

@LazySingleton(as: IRelationRepository)
class RelationRepository implements IRelationRepository {
  final FirebaseFirestore _firestore;

  RelationRepository(this._firestore);
  @override
  Future<Either<RelationFailure, List<Relation>?>> getAll(
      UniqueId treeId, UniqueId nodeId) async {
    try {
      final nodeRepo = NodeRepository(_firestore);
      final treeCol = _firestore.treesCollection();

      final relationQuery = await treeCol
          .doc(treeId.getOrCrash())
          .collection(RELATIONS_COLLECTION)
          .get();

      final relations = <Relation>[];
      relationQuery.docs.map((doc) {
        final relation = RelationDto.fromFirestore(doc).toDomain();
        if (relation.father.getOrCrash() == nodeId.getOrCrash() ||
            relation.mother.getOrCrash() == nodeId.getOrCrash()) {
          relations.add(relation);
        }
      }).toList();

      for (int i = 0; i < relations.length; i++) {
        final re = relations[i];
        final partner = re.father == nodeId ? re.mother : re.father;
        final eitherpartnerNode =
            await nodeRepo.getNode(treeId: re.partnerTreeId, nodeId: partner);

        relations[i] = re.copyWith(
            partnerNode: eitherpartnerNode.fold((l) => null, (r) => r));

        print('LOG | has the partners nodes');

        // Get the children nodes
        final childrenIds = re.children;
        final children = <TNode>[];

        for (int i = 0; i < childrenIds.length; i++) {
          final childId = childrenIds[i];
          final eitherChildNode =
              await nodeRepo.getNode(treeId: treeId, nodeId: childId);

          eitherChildNode.fold((l) {}, (r) => children.add(r));
        }
        relations[i] = relations[i].copyWith(childrenNodes: children);

        print('LOG | has the children nodes');
      }
      return right(relations);
    } catch (e) {
      if (e is FirebaseException &&
          (e.message!.contains('PERMISSION_DENIED') ||
              e.message!.contains('permission-denied'))) {
        return left(const RelationFailure.insufficientPermission());
      } else {
        return left(const RelationFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<RelationFailure, Relation>> getRelation(
      {required UniqueId treeId, required UniqueId relationId}) async {
    try {
      // final userDoc = await _firestore.userDocument();

      final node = await _firestore
          .treesCollection()
          .doc(treeId.getOrCrash())
          .collection(RELATIONS_COLLECTION)
          .doc(relationId.getOrCrash())
          .get();

      return right(RelationDto.fromFirestore(node).toDomain());
    } on PlatformException catch (e) {
      if (e is FirebaseException &&
          (e.message!.contains('PERMISSION_DENIED') ||
              e.message!.contains('permission-denied'))) {
        return left(const RelationFailure.insufficientPermission());
      } else {
        return left(const RelationFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<RelationFailure, Unit>> addRelationsListWithNewNodes({
    required List<Relation> relationsList,
    required List<TNode> partnersList,
    required TNode node,
  }) async {
    try {
      print('LOG | addRelationsListWithNewNodes start');
      if (relationsList.length != partnersList.length) {
        print('LOG | nodes length != relation Length');
        return left(const RelationFailure.unexpected());
      }
      for (int i = 0; i < relationsList.length; i++) {
        final relation = relationsList[i];
        final partner = partnersList[i];

        final relationDto = RelationDto.fromDomain(
            relation.copyWith(relationId: relation.relationId));

        // Add the relation
        await _firestore
            .treesCollection()
            .doc(node.treeId.getOrCrash())
            .collection(RELATIONS_COLLECTION)
            .doc(relationDto.relationId)
            .set(relationDto.toJson());

        // Add Partner Node
        partner.relations.add(relation.relationId);
        final partnerDto =
            NodeDto.fromDomain(partner.copyWith(nodeId: partner.nodeId));

        await _firestore
            .treesCollection()
            .doc(node.treeId.getOrCrash())
            .collection(NODES_COLLECTION)
            .doc(partnerDto.nodeId)
            .set(partnerDto.toJson());

        // Update Node
        node.relations.add(relation.relationId);

        print('LOG | added relation');
      }

      final nodeDto = NodeDto.fromDomain(node);
      await _firestore
          .treesCollection()
          .doc(node.treeId.getOrCrash())
          .collection(NODES_COLLECTION)
          .doc(nodeDto.nodeId)
          .update(nodeDto.toJson());
      print('LOG | added node');
      return right(unit);
    } on PlatformException catch (e) {
      if (e is FirebaseException &&
          (e.message!.contains('PERMISSION_DENIED') ||
              e.message!.contains('permission-denied'))) {
        return left(const RelationFailure.insufficientPermission());
      } else {
        return left(const RelationFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<RelationFailure, Unit>> update({
    required TNode partner,
    required Relation relation,
  }) async {
    try {
      // Add Relation
      final updatedRelation = Relation(
        partnerTreeId: relation.partnerTreeId,
        treeId: relation.treeId,
        relationId: UniqueId(),
        marriageStatus: relation.marriageStatus,
        father: relation.father,
        mother: relation.mother,
        children: relation.children,
        childrenNodes: [],
      );

      final relationDto = RelationDto.fromDomain(updatedRelation);

      await _firestore
          .treesCollection()
          .doc(updatedRelation.treeId.getOrCrash())
          .collection(RELATIONS_COLLECTION)
          .doc(relationDto.relationId)
          .update(relationDto.toJson());

      // Add Partner Node
      final partnerDto =
          NodeDto.fromDomain(partner.copyWith(nodeId: partner.nodeId));

      await _firestore
          .treesCollection()
          .doc(updatedRelation.treeId.getOrCrash())
          .collection(NODES_COLLECTION)
          .doc(partnerDto.nodeId)
          .update(partnerDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e is FirebaseException &&
          (e.message!.contains('PERMISSION_DENIED') ||
              e.message!.contains('permission-denied'))) {
        return left(const RelationFailure.insufficientPermission());
      } else {
        return left(const RelationFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<RelationFailure, Unit>> deleteRelationAndChildren(
      {required UniqueId treeId, required UniqueId relationId}) async {
    try {
      final relationIdVal = relationId.getOrCrash();
      final treeIdVal = treeId.getOrCrash();

      await _firestore
          .treesCollection()
          .doc(treeIdVal)
          .collection(RELATIONS_COLLECTION)
          .doc(relationIdVal)
          .delete();

      return right(unit);
    } on PlatformException catch (e) {
      if (e is FirebaseException &&
          (e.message!.contains('PERMISSION_DENIED') ||
              e.message!.contains('permission-denied'))) {
        return left(const RelationFailure.insufficientPermission());
      } else if (e is FirebaseException &&
          (e.message!.contains('NOT_FOUND') ||
              e.message!.contains('not-found'))) {
        return left(const RelationFailure.unableToUpdate());
      } else {
        return left(const RelationFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<RelationFailure, Unit>> deleteChild({
    required UniqueId treeId,
    required UniqueId relationId,
    required TNode child,
  }) async {
    try {
      final relationIdVal = relationId.getOrCrash();
      final treeIdVal = treeId.getOrCrash();

      await _firestore
          .treesCollection()
          .doc(treeIdVal)
          .collection(RELATIONS_COLLECTION)
          .doc(relationIdVal)
          .delete();

      return right(unit);
    } on PlatformException catch (e) {
      if (e is FirebaseException &&
          (e.message!.contains('PERMISSION_DENIED') ||
              e.message!.contains('permission-denied'))) {
        return left(const RelationFailure.insufficientPermission());
      } else if (e is FirebaseException &&
          (e.message!.contains('NOT_FOUND') ||
              e.message!.contains('not-found'))) {
        return left(const RelationFailure.unableToUpdate());
      } else {
        return left(const RelationFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TNodeFailure, Unit>> addChildren(
      {required UniqueId treeId, required List<TNode> children}) async {
    try {
      // Add Child Node
      for (TNode child in children) {
        final childDto =
            NodeDto.fromDomain(child.copyWith(nodeId: child.nodeId));

        await _firestore
            .treesCollection()
            .doc(treeId.getOrCrash())
            .collection(NODES_COLLECTION)
            .doc(childDto.nodeId)
            .set(childDto.toJson());

        // Add child to existing relation
        await _firestore
            .treesCollection()
            .doc(treeId.getOrCrash())
            .collection(RELATIONS_COLLECTION)
            .doc(child.upperFamily!.getOrCrash())
            .update({
          'children': FieldValue.arrayUnion([child.nodeId.getOrCrash()])
        });
      }

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
}

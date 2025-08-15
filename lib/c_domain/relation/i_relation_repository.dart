import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:asl/c_domain/relation/relation.dart';
import 'package:asl/c_domain/relation/relation_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IRelationRepository {
  Future<Either<RelationFailure, List<Relation?>>> getAll(
      UniqueId treeId, UniqueId nodeId);

  Future<Either<RelationFailure, Unit>> addRelationNewNode({
    required Relation relation,
    required TNode node,
    required TNode partner,
  });

  Future<Either<RelationFailure, Unit>> update({
    required TNode partner,
    required Relation relation,
  });

  // Future<Either<RelationFailure, Unit>> addRelation(
  //     {required UniqueId treeId, required UniqueId node});

  Future<Either<RelationFailure, Unit>> deleteRelationAndChildren(
      {required UniqueId treeId, required UniqueId relationId});

  Future<Either<TNodeFailure, Unit>> addChildren({
    required UniqueId treeId,
    required List<TNode> children,
  });
  Future<Either<RelationFailure, Unit>> deleteChild({
    required UniqueId treeId,
    required UniqueId relationId,
    required TNode child,
  });

  Future<Either<RelationFailure, Relation>> getRelation({
    required UniqueId treeId,
    required UniqueId relationId,
  });
}

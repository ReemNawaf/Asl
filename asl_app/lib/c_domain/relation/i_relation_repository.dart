import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:asl/c_domain/relation/relation.dart';
import 'package:asl/c_domain/relation/relation_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IRelationRepository {
  // getAll
  Future<Either<RelationFailure, List<Relation>?>> getAll(
      UniqueId treeId, UniqueId nodeId);

  // create & get
  Future<Either<RelationFailure, Unit>> create({
    required List<Relation> relationsList,
    required List<TNode> partnersList,
    required TNode node,
  });
  Future<Either<RelationFailure, Relation>> get({
    required UniqueId treeId,
    required UniqueId relationId,
  });

  Future<Either<RelationFailure, Unit>> update({
    required TNode partner,
    required Relation relation,
  });
  Future<Either<RelationFailure, Unit>> deleteRelationAndChildren({
    required UniqueId treeId,
    required Relation relation,
    required TNode partner,
    required TNode node,
  });

  // Create & Delete Child
  Future<Either<TNodeFailure, Unit>> addChildren({
    required UniqueId treeId,
    required List<TNode> children,
  });
  Future<Either<RelationFailure, Unit>> deleteChild({
    required UniqueId treeId,
    required UniqueId relationId,
    required TNode child,
  });
}

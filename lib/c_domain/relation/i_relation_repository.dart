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
  Future<Either<RelationFailure, Unit>> createWithExistingPartner({
    required Relation relation,
    required TNode node, // the “main” node that owns this relation
    required UniqueId partnerId,
  });

  Future<Either<RelationFailure, Relation>> get({
    required UniqueId treeId,
    required UniqueId relationId,
  });

  Future<Either<RelationFailure, Unit>> update({
    required TNode partner,
    required Relation relation,
  });
  Future<Either<RelationFailure, Unit>> deleteRelation(
      {required List<Relation> relations});

  // Create & Delete Child
  Future<Either<TNodeFailure, Unit>> addChildren({
    required List<TNode> children,
  });
  Future<Either<RelationFailure, Unit>> deleteChildren({
    required List<TNode> children,
  });
}

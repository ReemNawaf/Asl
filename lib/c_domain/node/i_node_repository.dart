import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:dartz/dartz.dart';

abstract class INodeRepository {
  Future<Either<TNodeFailure, Unit>> create(
      {required UniqueId treeId, required TNode node});

  Future<Either<TNodeFailure, Unit>> update(
      {required UniqueId treeId, required TNode node});

  Future<Either<TNodeFailure, Unit>> changeOrderInFamily(
      {required UniqueId treeId,
      required UniqueId relationId,
      required UniqueId nodeId,
      required int order});
  Future<Either<TNodeFailure, Unit>> changePartnerOrder({
    required UniqueId nodeId,
    required UniqueId relationId,
    required int order,
    required UniqueId treeId,
  });

  Future<Either<TNodeFailure, Unit>> changePartnerMarriageStatus({
    required UniqueId treeId,
    required UniqueId relationId,
    required MarriageStatus status,
  });

  Future<Either<TNodeFailure, Unit>> delete(
      {required UniqueId treeId, required UniqueId nodeId});
}

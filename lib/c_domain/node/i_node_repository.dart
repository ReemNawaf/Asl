import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:dartz/dartz.dart';

abstract class INodeRepository {
  Future<Either<TNodeFailure, Unit>> create(
      {required UniqueId treeId, required TNode node});

  Future<Either<TNodeFailure, Unit>> update(
      {required UniqueId treeId, required TNode node});

  Future<Either<TNodeFailure, Unit>> changeIsUnknown(
      {required UniqueId treeId,
      required UniqueId nodeId,
      required bool isUnknown});

  Future<Either<TNodeFailure, Unit>> delete(
      {required UniqueId treeId, required UniqueId nodeId});
}

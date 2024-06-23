import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:dartz/dartz.dart';

abstract class INodeRepository {
  Stream<Either<TNodeFailure, List<TNode>>> watchAll(UniqueId treeId);
  Future<Either<TNodeFailure, Unit>> create(
      {required String treeId, required TNode node});
  Future<Either<TNodeFailure, Unit>> update(
      {required String treeId, required TNode node});
  Future<Either<TNodeFailure, Unit>> delete(
      {required String treeId, required TNode node});

  Future<Either<TNodeFailure, TNode>> getNode(
      {required UniqueId treeId, required UniqueId nodeId});
}

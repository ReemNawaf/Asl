import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/tree/tree.dart';
import 'package:asl/c_domain/tree/tree_failure.dart';
import 'package:asl/c_domain/tree/tree_settings.dart';
import 'package:dartz/dartz.dart';

abstract class ITreeRepository {
  Future<Either<TreeFailure, List<Tree>>> watchAll();
  Future<Either<TreeFailure, Unit>> create(
      {required Tree tree, required TNode root});
  Future<Either<TreeFailure, Unit>> update(Tree tree);
  Future<Either<TreeFailure, Unit>> delete({required UniqueId treeId});

  Future<Either<TreeFailure, Tree>> getTree(UniqueId treeId);

  Future<void> saveSettings({
    required String treeId,
    required int? numberOfGenerations,
    required bool isShowUnknown,
  });

  Future<TreeSettings> loadSettings(UniqueId treeId);
}

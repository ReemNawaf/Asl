import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/local_tree_views/tree_graph_data.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:asl/c_domain/tree/tree.dart';
import 'package:asl/c_domain/tree/tree_failure.dart';
import 'package:asl/c_domain/tree/tree_settings.dart';
import 'package:dartz/dartz.dart';

abstract class ITreeRepository {
  // get AllTrees & TreeNodes
  Future<Either<TreeFailure, List<Tree>>> getAll();

  Future<Either<TNodeFailure, TNode>> getNode(
      {required UniqueId treeId, required UniqueId nodeId});

  Future<Either<TNodeFailure, TNode>> getTreeNodes({
    required UniqueId treeId,
    required UniqueId rootId,
  });

  Future<Either<TreeFailure, TreeGraphData>> getTreeGraph({
    required UniqueId treeId,
  });

  // create & get
  Future<Either<TreeFailure, Unit>> create(
      {required Tree tree, required TNode root});
  Future<Either<TreeFailure, Tree>> get(UniqueId treeId);

  // update & delete
  Future<Either<TreeFailure, Unit>> update(Tree tree);
  Future<Either<TreeFailure, Unit>> delete({required UniqueId treeId});

  // Settings functions
  Future<void> updateNumberOfGeneration({
    required UniqueId treeId,
    required int option,
  });
  Future<void> updateShareSettings({
    required UniqueId treeId,
    required int option,
  });
  Future<void> updateIsShowUnknown({
    required UniqueId treeId,
    required bool isShowUnknown,
  });
  Future<Either<TreeFailure, TreeSettings>> loadSettings(UniqueId treeId);
}

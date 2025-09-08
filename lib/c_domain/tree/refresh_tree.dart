import 'package:asl/b_application/node_bloc/node_watcher/node_watcher_bloc.dart';
import 'package:asl/b_application/tree_bloc/current_tree/current_tree_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void refreshTree(BuildContext context) {
  // After a child is added the RelationWatcherBloc & NodeWatcherBloc
  // should reload the all the trees relation and nodes and rebuilt the tree UI

  print('LOG | refresh tree after adding');
  final currentTree = context.read<CurrentTreeBloc>().state.currentTree!;

  // rebuild tree (on home page) after child is added
  // TODO: add the father id from state
  context.read<NodeWatcherBloc>().add(NodeWatcherEvent.getTree(
      treeId: currentTree.treeId, rootId: currentTree.rootId));
}

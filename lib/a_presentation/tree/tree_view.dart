import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/node/node_card/child_node.dart';
import 'package:asl/a_presentation/node/node_card/grandchild_node.dart';
import 'package:asl/a_presentation/node/node_card/partner_node.dart';
import 'package:asl/a_presentation/node/node_card/root_node.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/b_application/node_bloc/node_watcher/node_watcher_bloc.dart';
import 'package:asl/b_application/relation_bloc/child_form/child_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/partner_form/partner_form_bloc.dart';
import 'package:asl/b_application/tree_bloc/current_tree/current_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/draw_tree/draw_tree_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphview/GraphView.dart';

class TreeView extends StatelessWidget {
  const TreeView({
    super.key,
  });

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

  @override
  Widget build(BuildContext context) {
    return BlocListener<NodeFormBloc, NodeFormState>(
      listener: (context, state) {
        print('09 | *** listing on NodeForm');
        if (state.saveFailureOrSuccessOption.isSome()) {
          refreshTree(context);
        }
      },
      child: BlocListener<ChildFormBloc, ChildFormState>(
        listener: (context, state) {
          if (state.saveFailureOrSuccessOption.isSome()) {
            refreshTree(context);
          }
        },
        child: BlocListener<PartnerFormBloc, PartnerFormState>(
          listener: (context, state) {
            if (state.saveFailureOrSuccessOption.isSome()) {
              refreshTree(context);
            }
          },
          child: BlocBuilder<DrawTreeBloc, DrawTreeState>(
            builder: (_, state) {
              if (state.graph != null && state.builder != null) {
                print(
                    'Tree View is rebuilt ${state.graph!.nodes.length} nodes');
                return GraphView(
                  graph: state.graph!,
                  algorithm: BuchheimWalkerAlgorithm(
                    state.builder!,
                    TreeEdgeRenderer(state.builder!),
                  ),

                  // Styling
                  paint: Paint()
                    ..color = kBlacksColor
                    ..strokeWidth = 2
                    ..style = PaintingStyle.stroke,

                  builder: (Node node) {
                    final nodeType = node.key!.value['type'] as NodeType;
                    final tnode = node.key!.value['tnode'] as TNode;
                    if (nodeType == NodeType.root) {
                      return RootNode(node: tnode, pageContext: context);
                    } else if (nodeType == NodeType.partner) {
                      return PartnerNode(node: tnode, pageContext: context);
                    } else if (nodeType == NodeType.child) {
                      return ChildNode(node: tnode, pageContext: context);
                    } else if (nodeType == NodeType.grandchild) {
                      return GrandchildNode(node: tnode, pageContext: context);
                    } else {
                      return const SizedBox();
                    }
                  },
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}

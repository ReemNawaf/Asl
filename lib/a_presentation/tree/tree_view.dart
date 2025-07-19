import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/node/node_card/child_node.dart';
import 'package:asl/a_presentation/node/node_card/grandchild_node.dart';
import 'package:asl/a_presentation/node/node_card/partner_node.dart';
import 'package:asl/a_presentation/node/node_card/root_node.dart';
import 'package:asl/b_application/tree_bloc/draw_tree/draw_tree_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphview/GraphView.dart';

class TreeView extends StatelessWidget {
  const TreeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrawTreeBloc, DrawTreeState>(
      builder: (_, state) {
        if (state.graph != null && state.builder != null) {
          print(
              '015 | Tree View is rebuilt ${state.graph!.nodes.length} nodes');
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
    );
  }
}

import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/widgets/des_loading_wdg.dart';
import 'package:asl/a_presentation/node/node_card/child_node.dart';
import 'package:asl/a_presentation/node/node_card/grandchild_node.dart';
import 'package:asl/a_presentation/node/node_card/mirror_node.dart';
import 'package:asl/a_presentation/node/node_card/partner_node.dart';
import 'package:asl/a_presentation/node/node_card/root_node.dart';
import 'package:asl/b_application/tree_bloc/draw_tree/draw_tree_bloc.dart';
import 'package:asl/c_domain/core/value_objects.dart';
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
          debugPrint('Tree View is rebuilt ${state.graph!.nodes.length} nodes');
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
              final data = node.key!.value as Map;
              final nodeType = node.key!.value['type'] as NodeType;

              // Mirror & real both carry a tnode
              final tnode = node.key!.value['tnode'] as TNode;

              if (nodeType == NodeType.root) {
                return RootNode(node: tnode, pageContext: context);
              } else if (nodeType == NodeType.partner) {
                return PartnerNode(node: tnode, pageContext: context);
              } else if (nodeType == NodeType.partnerMirror) {
                // This is a Mirror Partner Node
                // replace the node with the real node id
                final realId = data['realId'] as UniqueId;

                if (tnode.gender == Gender.female) {
                  // the mirror node is female
                  // the partner node is male
                  // children drawn under them
                  return MirrorNode(
                    node: tnode.copyWith(nodeId: realId),
                    pageContext: context,
                    noChildren: false,
                  );
                } else {
                  // the mirror node is male
                  // the partner node is female
                  // children won't drawn
                  // colored in new color to show
                  return MirrorNode(
                    node: tnode.copyWith(nodeId: realId),
                    pageContext: context,
                    noChildren: true,
                  );
                }
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
          return const DescriptiveLoadingWidget(
              loading: TreeDisplayLoading.DrawTree);
        }
      },
    );
  }
}

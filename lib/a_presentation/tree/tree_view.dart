import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/tree/widgets/node/child_node.dart';
import 'package:asl/a_presentation/tree/widgets/node/grandchild_node.dart';
import 'package:asl/a_presentation/tree/widgets/node/partner.dart';
import 'package:asl/a_presentation/tree/widgets/node/root_node.dart';
import 'package:asl/b_application/node/node_form/node_form_bloc.dart';
import 'package:asl/b_application/tree/tree_draw/tree_draw_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphview/GraphView.dart';

class TreeView extends StatelessWidget {
  const TreeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TreeDrawBloc, TreeDrawState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox(),
          graphDrawn: (state) {
            return BlocProvider<NodeFormBloc>(
              create: (context) => getIt<NodeFormBloc>(),
              child: GraphView(
                graph: state.graph,

                algorithm: BuchheimWalkerAlgorithm(
                  state.builder,
                  TreeEdgeRenderer(state.builder),
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
                    return RootNode(node: tnode);
                  } else if (nodeType == NodeType.partner) {
                    return PartnerNode(node: tnode);
                  } else if (nodeType == NodeType.child) {
                    return ChildNode(node: tnode);
                  } else if (nodeType == NodeType.grandchild) {
                    return GrandchildNode(node: tnode);
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            );
          },
        );
      },
    );
  }
}

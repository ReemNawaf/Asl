import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/widgets/des_loading_wdg.dart';
import 'package:asl/a_presentation/home/widgets/network_error_wdg.dart';
import 'package:asl/a_presentation/node/node_card/child_node.dart';
import 'package:asl/a_presentation/node/node_card/grandchild_node.dart';
import 'package:asl/a_presentation/node/node_card/mirror_node.dart';
import 'package:asl/a_presentation/node/node_card/partner_node.dart';
import 'package:asl/a_presentation/node/node_card/root_node.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
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
    return BlocBuilder<LocalTreeBloc, LocalTreeState>(
      builder: (context, treeState) {
        if (treeState.treeFailureOption.isSome()) {
          return NetworkError(state: treeState);
        }
        return BlocBuilder<DrawTreeBloc, DrawTreeState>(
          builder: (_, state) {
            debugPrint(
                'LOG | Tree View is rebuilt ${state.graph!.nodes.length} nodes');

            // memoize so we don't recompute for every rebuild node
            final Map<String, String?> fatherNameCache = {};

            String? fatherNameOf(String realNodeIdKey) {
              final store = context.read<LocalTreeBloc>().state.store;
              return fatherNameCache.putIfAbsent(realNodeIdKey, () {
                final n = store.nodesById[realNodeIdKey];
                final upper = n?.upperFamily;
                if (n == null || upper == null) return null;

                final rel = store.relationsById[upper.getOrCrash()];
                if (rel == null) return null;

                final fatherIdKey = rel.father.getOrCrash();
                final father = store.nodesById[fatherIdKey];
                if (father == null) return null;

                // adjust if your firstName is a ValueObject
                return father.firstName.getOrCrash();
              });
            }

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

                // Mirror & real both carry a tnode
                final tnode = node.key!.value['tnode'] as TNode;

                // real id for mirror nodes
                final realId = node.key!.value['realId'] as String?;
                final id = node.key!.value['id'] as String;

                final nodeId = realId ?? tnode.nodeId.getOrCrash();
                final idKey = nodeId; // use REAL id when mirror
                final fatherName = fatherNameOf(nodeId);

                final nodeKey = context.read<DrawTreeBloc>().keyForNode(idKey,
                    mirrorNode: nodeType == NodeType.partnerMirror,
                    drawingId: id);

                return switch (nodeType) {
                  NodeType.root => KeyedSubtree(
                      key: nodeKey,
                      child: RootNode(node: tnode, pageContext: context)),
                  NodeType.partner => KeyedSubtree(
                      key: nodeKey,
                      child: PartnerNode(
                          node: tnode,
                          pageContext: context,
                          fatherName: fatherName)),
                  NodeType.partnerMirror => tnode.gender == Gender.female
                      ?
                      // the mirror node is female
                      // the partner node is male
                      // children drawn under them
                      MirrorNode(
                          node: tnode.copyWith(
                              nodeId: UniqueId.fromUniqueString(nodeId)),
                          pageContext: context,
                          noChildren: false,
                          fatherName: fatherName,
                        )
                      // the mirror node is male
                      // the partner node is female
                      // children won't drawn
                      // colored in new color to show

                      : MirrorNode(
                          node: tnode.copyWith(
                              nodeId: UniqueId.fromUniqueString(nodeId)),
                          pageContext: context,
                          noChildren: true,
                          fatherName: fatherName,
                        ),
                  NodeType.child => KeyedSubtree(
                      key: nodeKey,
                      child: ChildNode(
                          node: tnode,
                          pageContext: context,
                          fatherName: fatherName)),
                  NodeType.grandchild => KeyedSubtree(
                      key: nodeKey,
                      child: GrandchildNode(
                          node: tnode,
                          pageContext: context,
                          fatherName: fatherName)),
                  _ => const SizedBox(),
                };
              },
            );
          },
        );
      },
    );
  }
}

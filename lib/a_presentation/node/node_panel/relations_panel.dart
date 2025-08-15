import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';

import 'package:asl/a_presentation/core/widgets/app_member_btn.dart';
import 'package:asl/a_presentation/core/widgets/loading_wdg.dart';
import 'package:asl/a_presentation/node/widgets/add_child_wdg.dart';
import 'package:asl/a_presentation/node/widgets/add_partner_wdg.dart';
import 'package:asl/a_presentation/node/widgets/children_wdg.dart';
import 'package:asl/a_presentation/node/widgets/partner_wdg.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/b_application/node_bloc/node_watcher/node_watcher_bloc.dart';
import 'package:asl/b_application/relation_bloc/child_form/child_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/partner_form/partner_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/relation_watcher/relation_watcher_bloc.dart';
import 'package:asl/b_application/tree_bloc/current_tree/current_tree_bloc.dart';

import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RelationsPanel extends StatelessWidget {
  const RelationsPanel({
    super.key,
    required this.color,
    required this.node,
  });

  final MaterialColor color;
  final TNode node;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RelationWatcherBloc>()
        ..add(RelationWatcherEvent.getAllRelations(node.treeId, node.nodeId)),
      child: BlocBuilder<RelationWatcherBloc, RelationWatcherState>(
        builder: (context, reState) {
          return reState.map(
            gettingAllRelationsSuccess: (relState) => Container(
              padding: const EdgeInsets.only(left: 10.0, top: 20.0),
              height: PAN_HEIGHT,
              width: PAN_WIDTH - 106,
              child: BlocListener<PartnerFormBloc, PartnerFormState>(
                listener: (context, state) {
                  if (state.saveFailureOrSuccessOption.isSome()) {
                    // After a partner is added the RelationWatcherBloc & NodeWatcherBloc
                    // should reload the all the trees relation and nodes and rebuilt the tree UI

                    context.read<NodeWatcherBloc>().add(
                        NodeWatcherEvent.getTree(context
                            .read<CurrentTreeBloc>()
                            .state
                            .currentTree!));
                  }
                },
                child: SingleChildScrollView(
                  child: BlocBuilder<NodeFormBloc, NodeFormState>(
                    builder: (context, state) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                PartnerWidget(
                                  node: node,
                                  color: color,
                                ),
                                kVSpacer10,
                                if (state.addPartner)
                                  AddPartnerWidget(node: node, color: color),
                                AddMemberButton(
                                  onPressed: () {
                                    if (state.addPartner) {
                                      context.read<NodeFormBloc>().add(
                                            const NodeFormEvent.addPartner(
                                                false),
                                          );
                                    } else {
                                      context.read<NodeFormBloc>().add(
                                            const NodeFormEvent.addPartner(
                                                true),
                                          );
                                      context.read<PartnerFormBloc>().add(
                                            PartnerFormEvent.initialized(node),
                                          );
                                    }
                                  },
                                  label:
                                      'إضافة زوج${node.gender == Gender.male ? 'ة' : ''}',
                                  color: color,
                                )
                              ],
                            ),
                            Divider(thickness: 0.5, color: kBlacksColor[600]),
                            ChildrenWidget(
                              node: node,
                              color: color,
                            ),
                            kVSpacer10,
                            BlocBuilder<NodeFormBloc, NodeFormState>(
                              builder: (context, state) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (state.addChild) ...[
                                      AddChildWidget(
                                        color: color,
                                        node: node,
                                        relations: relState.relation,
                                      ),
                                    ],
                                    AddMemberButton(
                                      onPressed: () {
                                        if (state.addChild) {
                                          context.read<NodeFormBloc>().add(
                                                const NodeFormEvent.addChild(
                                                    false),
                                              );
                                          // Add the child to the temp children list
                                          context.read<ChildFormBloc>().add(
                                                const ChildFormEvent
                                                    .addChildToList(),
                                              );
                                        } else {
                                          // Make the child add button showing add new child
                                          context.read<NodeFormBloc>().add(
                                                const NodeFormEvent.addChild(
                                                    true),
                                              );
                                          // Add empty child to be ready to add to it
                                          context.read<ChildFormBloc>().add(
                                              ChildFormEvent.addChild(
                                                  treeId: relState
                                                      .relation[0]!.treeId,
                                                  relationId: relState
                                                      .relation[0]!
                                                      .relationId));
                                        }
                                      },
                                      label: 'إضافة ابن/ة',
                                      color: color,
                                    )
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            initial: (_) => const SizedBox(),
            getRelationInProgress: (_) => const LoadingWidget(),
            getAllRelationsInProgress: (_) => const LoadingWidget(),
            gettingAllRelationsFailure: (_) => const SizedBox(),
            gettingRelationFailure: (_) => const SizedBox(),
            gettingRelationSuccess: (_) => const SizedBox(),
          );
        },
      ),
    );
  }
}

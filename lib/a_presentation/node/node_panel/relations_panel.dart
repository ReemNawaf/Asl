import 'package:asl/a_presentation/a_shared/constants.dart';

import 'package:asl/a_presentation/core/widgets/app_member_btn.dart';
import 'package:asl/a_presentation/core/widgets/loading_wdg.dart';
import 'package:asl/a_presentation/node/widgets/add_child_wdg.dart';
import 'package:asl/a_presentation/node/widgets/add_partner_wdg.dart';
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

const T_PAN_WIDTH = PAN_WIDTH - 106;

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
            gettingAllRelationsSuccess: (_) => Container(
              padding: const EdgeInsets.only(left: 10.0, top: 20.0),
              height: PAN_HEIGHT,
              width: T_PAN_WIDTH,
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
                      return SizedBox(
                        width: (T_PAN_WIDTH - 10) / 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: (T_PAN_WIDTH - 10) / 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                        context.read<PartnerFormBloc>().add(
                                            const PartnerFormEvent.saved());
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
                                              PartnerFormEvent.initialized(
                                                  node),
                                            );
                                      }
                                    },
                                    label:
                                        'إضافة زوج${node.gender == Gender.male ? 'ة' : ''}',
                                    color: color,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: (T_PAN_WIDTH - 10) / 2,
                              height: PAN_HEIGHT + 100,
                              child: BlocBuilder<NodeFormBloc, NodeFormState>(
                                builder: (context, state) {
                                  // final treeId = sinRelation.father == node.nodeId
                                  //     ? node.treeId
                                  //     : sinRelation.partnerNode!.treeId;
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (state.addChild) ...[
                                        AddChildWidget(
                                          color: color,
                                          node: node,
                                        ),
                                      ],
                                      AddMemberButton(
                                        onPressed: () {
                                          if (state.addChild) {
                                            context.read<ChildFormBloc>().add(
                                                const ChildFormEvent.saved());
                                            context.read<NodeFormBloc>().add(
                                                  const NodeFormEvent.addChild(
                                                      true),
                                                );
                                          } else {
                                            context.read<NodeFormBloc>().add(
                                                  const NodeFormEvent.addChild(
                                                      true),
                                                );
                                            // context.read<ChildFormBloc>().add(
                                            //       ChildFormEvent.initialized(
                                            //         treeId: treeId,
                                            //         upperFamily: sinRelation.relationId,
                                            //       ),
                                            //     );
                                          }
                                        },
                                        label: 'إضافة ابن/ة',
                                        color: color,
                                      )
                                    ],
                                  );
                                },
                              ),
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

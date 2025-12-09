import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';

import 'package:asl/a_presentation/core/widgets/app_member_btn.dart';
import 'package:asl/a_presentation/core/widgets/loading_wdg.dart';
import 'package:asl/a_presentation/node/widgets/add_child_wdg.dart';
import 'package:asl/a_presentation/node/widgets/add_partner_wdg.dart';
import 'package:asl/a_presentation/node/widgets/children_wdg.dart';
import 'package:asl/a_presentation/node/widgets/partner_wdg.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/child_form/child_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/partner_form/partner_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/relation_watcher/relation_watcher_bloc.dart';

import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/injection.dart';
import 'package:asl/localization/localization_constants.dart';
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
    return BlocProvider<RelationWatcherBloc>(
      create: (context) => getIt<RelationWatcherBloc>()
        ..add(RelationWatcherEvent.getAllRelations(node.treeId, node.nodeId)),
      child: BlocBuilder<RelationWatcherBloc, RelationWatcherState>(
        builder: (context, reState) {
          return reState.map(
            gettingAllRelationsSuccess: (relState) => Container(
              padding: const EdgeInsets.only(left: 10.0, top: 20.0),
              height: PAN_HEIGHT,
              width: PAN_WIDTH - 106,
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
                                    final val = context
                                        .read<PartnerFormBloc>()
                                        .state
                                        .partner
                                        .firstName
                                        .isValid();

                                    context.read<PartnerFormBloc>().add(
                                        const PartnerFormEvent
                                            .addPartnertoList());
                                    context
                                        .read<NodeFormBloc>()
                                        .add(NodeFormEvent.addPartner(!val));
                                  } else {
                                    context
                                        .read<PartnerFormBloc>()
                                        .add(PartnerFormEvent.addPartner(node));

                                    context.read<NodeFormBloc>().add(
                                        const NodeFormEvent.addPartner(true));
                                  }
                                },
                                label: node.gender == Gender.male
                                    ? getTr(context, 'add_wife')!
                                    : getTr(context, 'add_husband')!,
                                color: color,
                              )
                            ],
                          ),
                          Divider(thickness: 0.5, color: kBlacksColor[600]),
                          ChildrenWidget(
                              node: node,
                              color: color,
                              relations: relState.relation),
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
                                  if (relState.relation.isNotEmpty)
                                    AddMemberButton(
                                      onPressed: () {
                                        if (state.addChild) {
                                          // Add the child to the temp children list
                                          context.read<ChildFormBloc>().add(
                                                const ChildFormEvent
                                                    .addChildToList(),
                                              );

                                          final val = context
                                              .read<ChildFormBloc>()
                                              .state
                                              .tempChild
                                              .firstName
                                              .isValid();

                                          // Make the child add button showing add new child
                                          context.read<NodeFormBloc>().add(
                                              NodeFormEvent.addChild(!val));
                                        } else {
                                          // Add empty child to be ready to add to it
                                          context.read<ChildFormBloc>().add(
                                              ChildFormEvent.addChild(
                                                  treeId: relState
                                                      .relation[0].treeId,
                                                  relationId: relState
                                                      .relation[0].relationId));

                                          context.read<NodeFormBloc>().add(
                                              const NodeFormEvent.addChild(
                                                  true));
                                        }
                                      },
                                      label: getTr(context, 'add_child')!,
                                      color: color,
                                    )
                                  else
                                    Text(node.gender == Gender.male
                                        ? getTr(context, 'add_wife_first')!
                                        : getTr(context, 'add_husband_first')!)
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
            initial: (_) => const SizedBox(),
            getRelationInProgress: (_) => LoadingWidget(color: color),
            getAllRelationsInProgress: (_) => LoadingWidget(color: color),
            gettingAllRelationsFailure: (_) => const SizedBox(),
            gettingRelationFailure: (_) => const SizedBox(),
            gettingRelationSuccess: (_) => const SizedBox(),
          );
        },
      ),
    );
  }
}

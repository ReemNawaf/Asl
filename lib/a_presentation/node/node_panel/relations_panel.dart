import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';

import 'package:asl/a_presentation/core/widgets/app_member_btn.dart';
import 'package:asl/a_presentation/node/widgets/add_child_wdg.dart';
import 'package:asl/a_presentation/node/widgets/add_partner_wdg.dart';
import 'package:asl/a_presentation/node/widgets/children_wdg.dart';
import 'package:asl/a_presentation/node/widgets/partner_wdg.dart';
import 'package:asl/b_application/auth_bloc/auth_bloc.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/child_form/child_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/partner_form/partner_form_bloc.dart';
import 'package:asl/c_domain/local_tree_views/tree_graph_ui_queries.dart';

import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RelationsPanel extends StatelessWidget {
  const RelationsPanel({
    super.key,
    required this.color,
    required this.node,
    required this.mainContext,
  });

  final MaterialColor color;
  final TNode node;
  final BuildContext mainContext;

  @override
  Widget build(BuildContext context) {
    final store = mainContext.read<LocalTreeBloc>().state.store;

    print('--- store: $store');

    final relations = TreeGraphUIQueries.relationsOfNode(
      store: store,
      nodeId: node.nodeId,
    );

    print('--- relations: ${store.relationsById.keys}');
    return Container(
      padding: const EdgeInsets.only(left: 10.0, top: 20.0),
      height: PAN_HEIGHT,
      width: PAN_WIDTH - 106,
      child: SingleChildScrollView(
        child: BlocBuilder<NodeFormBloc, NodeFormState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, authState) {
                final isAuth = authState.maybeMap(
                  authenticated: (_) => true,
                  orElse: () => false,
                );

                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Partner
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PartnerWidget(
                          node: node,
                          color: color,
                          relations: relations,
                        ),
                        kVSpacer10,
                        if (state.addPartner)
                          AddPartnerWidget(node: node, color: color),
                        if (isAuth)
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
                                    const PartnerFormEvent.addPartnertoList());
                                context
                                    .read<NodeFormBloc>()
                                    .add(NodeFormEvent.addPartner(!val));
                              } else {
                                context
                                    .read<PartnerFormBloc>()
                                    .add(PartnerFormEvent.addPartner(node));

                                context
                                    .read<NodeFormBloc>()
                                    .add(const NodeFormEvent.addPartner(true));
                              }
                            },
                            label: node.gender == Gender.male
                                ? getTr(context, 'add_wife')!
                                : getTr(context, 'add_husband')!,
                            color: color,
                          ),
                      ],
                    ),

                    Divider(thickness: 0.5, color: kBlacksColor[600]),
                    ChildrenWidget(
                        node: node, color: color, relations: relations),
                    kVSpacer10,
                    BlocBuilder<NodeFormBloc, NodeFormState>(
                      builder: (context, state) {
                        final allRelations = [
                          ...relations,
                          ...context.read<PartnerFormBloc>().state.relationsList
                        ];

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (state.addChild)
                              AddChildWidget(
                                color: color,
                                node: node,
                                allRelations: allRelations,
                              ),
                            if (isAuth)
                              if (allRelations.isNotEmpty)
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
                                      context
                                          .read<NodeFormBloc>()
                                          .add(NodeFormEvent.addChild(!val));
                                    } else {
                                      // Add empty child to be ready to add to it
                                      context.read<ChildFormBloc>().add(
                                          ChildFormEvent.addChild(
                                              treeId: allRelations[0].treeId,
                                              relationId:
                                                  allRelations[0].relationId));

                                      context.read<NodeFormBloc>().add(
                                          const NodeFormEvent.addChild(true));
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
                );
              }),
            );
          },
        ),
      ),
    );
  }
}

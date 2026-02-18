import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PartnerOrder extends StatelessWidget {
  const PartnerOrder({
    super.key,
    required this.node,
    required this.state,
    required this.color,
  });

  final TNode node;
  final NodeFormState state;
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalTreeBloc, LocalTreeState>(
      builder: (context, treeState) {
        final relations = node.relations
            .map((r) => treeState.store.relationsById[r.getOrCrash()])
            .toList();

        return SizedBox(
          width: PAN_WIDTH - 106,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: node.relations.length,
            itemBuilder: (context, index) {
              final r = relations[index];

              final partner =
                  node.gender == Gender.male ? r?.mother : r?.father;

              if (partner == null || r == null) {
                return const SizedBox();
              }

              final partnerName = treeState
                  .store.nodesById[partner.getOrCrash()]?.firstName
                  .getOrCrash();

              final partnerRelations =
                  treeState.store.nodesById[partner.getOrCrash()]?.relations;

              final partnerRelationsList = List.generate(
                  partnerRelations?.length ?? 0, (index) => index + 1);

              final partnerRelationsItems = partnerRelationsList
                  .map((int i) => DropdownMenuItem<int>(
                        value: i - 1,
                        child: OrderItem(label: i.toString()),
                      ))
                  .toList();

              final relationStatusItems = relationStatus
                  .map((status) => DropdownMenuItem<MarriageStatus>(
                        value: status,
                        child: OrderItem(
                            label: getMarriageSt(context, status, node.gender)),
                      ))
                  .toList();

              return Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  children: [
                    Text(
                        '${node.gender == Gender.male ? getTr(context, 'as_husband') : getTr(context, 'as_wife')} $partnerName'),
                    kHSpacer15,
                    if ((partnerRelations?.length ?? 0) >= 2) ...[
                      kHSpacer10,
                      Text(node.gender == Gender.male
                          ? getTr(context, 'his_order')!
                          : getTr(context, 'her_order')!),
                      kHSpacer15,
                      Container(
                        decoration: kAppFormsDecor,
                        height: kTextFieldHeight,
                        width: ORDER_DROPDOWN_OUTER_WIDTH,
                        child: DropdownButton<int>(
                          items: partnerRelationsItems,
                          isExpanded: false,
                          value: state.relationInfo?[r.relationId]?['order'] ??
                              partnerRelations?.indexOf(r.relationId),
                          onChanged: state.isEditing
                              ? (value) {
                                  context.read<NodeFormBloc>().add(
                                      NodeFormEvent.changePartnerOrder(
                                          relationId: r.relationId,
                                          partnerId: partner,
                                          order: value ?? 0,
                                          status: r.marriageStatus));
                                }
                              : null,
                          underline: const SizedBox(),
                          icon: const Icon(Icons.expand_more_rounded),
                          dropdownColor: kWhitesColor[600],
                          borderRadius:
                              BorderRadius.circular(kAppCircularRadius),
                          style: kBodyMedium,
                          elevation: 1,
                          padding: EdgeInsets.zero,
                        ),
                      ),
                      kHSpacer20,
                    ],
                    Text(getTr(context, 'marriage_status')!),
                    kHSpacer15,
                    Container(
                      decoration: kAppFormsDecor,
                      height: kTextFieldHeight,
                      width: ORDER_DROPDOWN_OUTER_WIDTH,
                      child: DropdownButton<MarriageStatus>(
                        items: relationStatusItems,
                        isExpanded: false,
                        value: state.relationInfo?[r.relationId]?['status'] ??
                            r.marriageStatus,
                        onChanged: state.isEditing
                            ? (value) {
                                context.read<NodeFormBloc>().add(
                                    NodeFormEvent.changePartnerMarriageStatus(
                                        relationId: r.relationId,
                                        partnerId: partner,
                                        status: value ?? MarriageStatus.married,
                                        order: partnerRelations
                                            ?.indexOf(r.relationId)));
                              }
                            : null,
                        underline: const SizedBox(),
                        icon: const Icon(Icons.expand_more_rounded),
                        dropdownColor: kWhitesColor[600],
                        borderRadius: BorderRadius.circular(kAppCircularRadius),
                        style: kBodyMedium,
                        elevation: 1,
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: ORDER_DROPDOWN_INNER_WIDTH,
        child: Text(label, textAlign: TextAlign.center));
  }
}

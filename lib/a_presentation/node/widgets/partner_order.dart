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
  });

  final TNode node;
  final NodeFormState state;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalTreeBloc, LocalTreeState>(
      builder: (context, treeState) {
        final relations = node.relations
            .map((r) => treeState.store.relationsById[r.getOrCrash()])
            .toList();

        return Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: SizedBox(
            width: 210,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: node.relations.length,
              itemBuilder: (context, index) {
                final r = relations[index];

                final partner =
                    node.gender == Gender.male ? r?.mother : r?.father;

                final partnerName = treeState
                    .store.nodesById[partner?.getOrCrash() ?? '']?.firstName
                    .getOrCrash();

                final partnerRelations = treeState
                    .store.nodesById[partner?.getOrCrash() ?? '']?.relations;

                final partnerRelationsList = List.generate(
                    partnerRelations?.length ?? 0, (index) => index + 1);

                final partnerRelationsItems = partnerRelationsList
                    .map((int i) => DropdownMenuItem<int>(
                          value: i - 1,
                          child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40),
                              width: 120,
                              child: Text(i.toString())),
                        ))
                    .toList();

                if ((partnerRelations?.length ?? 0) < 2) {
                  return const SizedBox();
                }

                return Row(
                  children: [
                    Text(partnerName ?? ''),
                    Container(
                      decoration: kAppFormsDecor,
                      height: kTextFieldHeight,
                      width: 150,
                      child: DropdownButton<int>(
                        items: partnerRelationsItems,
                        isExpanded: false,
                        value: state.partnerOrders?[
                                r?.relationId.getOrCrash() ?? ''] ??
                            partnerRelations?.indexOf(r!.relationId),
                        onChanged: state.isEditing
                            ? (value) {
                                context.read<NodeFormBloc>().add(
                                    NodeFormEvent.changePartnerOrder(
                                        relationId: relations[index]
                                                ?.relationId
                                                .getOrCrash() ??
                                            '',
                                        order: value ?? 0));
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
                    kHSpacer20,
                    Text(getTr(context, 'marriage_status')!),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class AliveWidget extends StatelessWidget {
  const AliveWidget({
    super.key,
    required this.color,
    required this.isAlive,
    required this.aliveOrDead,
    required this.isEditing,
  });

  final bool isEditing;
  final MaterialColor color;
  final bool isAlive;
  final Function({required bool isAliveSelected}) aliveOrDead;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(getTr(context, 'status')!, style: kFootnoteStyle),
        kVSpacer5,
        Row(
          children: [
            AliveButton(
              isEditing: isEditing,
              onTap: () => isEditing ? aliveOrDead(isAliveSelected: true) : {},
              color: color,
              text: getTr(context, 'alive')!,
              selected: isAlive,
            ),
            const SizedBox(width: 16.0),
            AliveButton(
              isEditing: isEditing,
              onTap: () => isEditing ? aliveOrDead(isAliveSelected: false) : {},
              color: color,
              text: getTr(context, 'dead')!,
              selected: !isAlive,
            ),
          ],
        ),
      ],
    );
  }
}

class AliveButton extends StatelessWidget {
  const AliveButton(
      {super.key,
      required this.color,
      required this.text,
      required this.selected,
      required this.onTap,
      required this.isEditing});

  final MaterialColor color;
  final String text;
  final bool selected;
  final Function() onTap;
  final bool isEditing;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: isEditing ? SystemMouseCursors.click : SystemMouseCursors.basic,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: selected ? color[300] : color[600],
            borderRadius: BorderRadius.circular(8.0),
          ),
          height: 33,
          width: 94,
          child: Text(text),
        ),
      ),
    );
  }
}

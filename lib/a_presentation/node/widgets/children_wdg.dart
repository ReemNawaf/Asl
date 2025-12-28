import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';

import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/a_shared/ui_helpers.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/core/widgets/icon_only_btn.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/child_form/child_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/partner_form/partner_form_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/relation/relation.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChildrenWidget extends StatelessWidget {
  final TNode node;
  final MaterialColor color;
  final List<Relation> relations;
  const ChildrenWidget({
    super.key,
    required this.node,
    required this.color,
    required this.relations,
  });

  @override
  Widget build(BuildContext context) {
    final isEditing = context.read<NodeFormBloc>().state.isEditing;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kVSpacer20,
        Text(
          getNodeChildrenTitle(context, node.gender),
          style: kHeadlineMedium,
        ),
        kVSpacer10,
        BlocBuilder<ChildFormBloc, ChildFormState>(
          builder: (context, state) {
            final List<Relation> allRelations = [
              ...relations,
              ...context.read<PartnerFormBloc>().state.relationsList
            ];
            return ListView.builder(
              itemCount: allRelations.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final sinRelation = allRelations[index];
                final partner = sinRelation.partnerNode!;
                final tempRelationChildren =
                    state.children[sinRelation.relationId.getOrCrash()];

                final allChildren = [
                  ...sinRelation.childrenNodes,
                  ...?tempRelationChildren
                ];

                final deleted = state.deletedChildren
                    .map((i) => i.nodeId.getOrCrash())
                    .toList();

                final visibleChildren = allChildren
                    .where((p) => !deleted.contains(p.nodeId.getOrCrash()))
                    .toList();

                return visibleChildren.isNotEmpty
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                '${getTr(context, 'from')!} ${getNodePartnerTitleSingle(context, node.gender)}',
                                style: kBodyLarge.copyWith(
                                    fontWeight: FontWeight.w500),
                              ),
                              kHSpacer5,
                              Text(
                                partner.firstName.getOrCrash(),
                                style: kBodyLarge,
                              ),
                            ],
                          ),
                          kVSpacer5,
                          GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 20,
                              childAspectRatio: 3.2,
                            ),
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: visibleChildren.length,
                            itemBuilder: (context, index) {
                              final child = visibleChildren[index];

                              final name = TextEditingController(
                                  text: child.firstName.getOrCrash());
                              return Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 63,
                                        width: isEditing ? 245 : 273,
                                        child: AppFormField(
                                          label: child.gender == Gender.female
                                              ? getTr(context, 'daughter')!
                                              : getTr(context, 'son')!,
                                          hint: '',
                                          onSaved: (_) {},
                                          controller: name,
                                          validator: (_) => '',
                                          isEditing: false,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          if (sinRelation.marriageDate !=
                                              null) ...[
                                            Text(
                                              '${getTr(context, 'birth_date')}: ${child.birthDate!.year}',
                                              style: kCaption1Style.copyWith(
                                                color: kBlacksColor[600],
                                              ),
                                            ),
                                            kHSpacer20,
                                          ],
                                        ],
                                      ),
                                      kVSpacer10,
                                    ],
                                  ),
                                  if (isEditing)
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0.0),
                                      child: IconOnlyButton(
                                          onPressed: () {
                                            if (child.relations.isEmpty) {
                                              context.read<ChildFormBloc>().add(
                                                  ChildFormEvent.deleltChild(
                                                      node: child));
                                            } else {
                                              appSnackBar(
                                                context,
                                                text: getTr(context,
                                                    'cannot_delete_child_with_relation_${child.gender.name}')!,
                                                type: SnackBarType.error,
                                              );
                                            }
                                          },
                                          icon: const Icon(Icons.close)),
                                    )
                                ],
                              );
                            },
                          ),
                        ],
                      )
                    : const SizedBox();
              },
            );
          },
        ),
      ],
    );
  }
}

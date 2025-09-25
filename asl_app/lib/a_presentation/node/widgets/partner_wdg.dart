import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';

import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/a_shared/ui_helpers.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/core/widgets/icon_only_btn.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/partner_form/partner_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/relation_watcher/relation_watcher_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/relation/relation.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PartnerWidget extends StatelessWidget {
  const PartnerWidget({
    super.key,
    required this.node,
    required this.color,
  });

  final TNode node;
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    final isEditing = context.read<NodeFormBloc>().state.isEditing != -1;

    return BlocBuilder<RelationWatcherBloc, RelationWatcherState>(
      builder: (context, state) {
        return state.map(
          gettingAllRelationsSuccess: (state) {
            final relations = state.relation;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kVSpacer10,
                Text(
                  getNodePartnerTitle(node.gender, state.relation.length),
                  style: kHeadLineStyle,
                ),
                kVSpacer10,
                BlocBuilder<PartnerFormBloc, PartnerFormState>(
                  builder: (context, state) {
                    final List<Relation> allPartners = [
                      ...relations,
                      ...state.relationsList
                    ];

                    final deleted = state.deletedPartners;
                    final visiblePartners = allPartners
                        .where((p) => !deleted
                            .containsKey(p.partnerNode!.nodeId.getOrCrash()))
                        .toList();

                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        childAspectRatio: 3,
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: visiblePartners.length,
                      itemBuilder: (context, index) {
                        final sinRelation = visiblePartners[index];
                        final partner = sinRelation.partnerNode!;
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 63,
                                  width: isEditing ? 245 : 273,
                                  child: AppFormField(
                                    label:
                                        'الزوج${node.gender == Gender.male ? 'ة' : ''}',
                                    hint: '',
                                    onSaved: (_) {},
                                    initialValue:
                                        partner.firstName.getOrCrash(),
                                    validator: (_) => '',
                                    isEditing: false,
                                  ),
                                ),
                                if (isEditing)
                                  Padding(
                                    padding: const EdgeInsets.only(top: 22.0),
                                    child: IconOnlyButton(
                                        onPressed: () {
                                          if (sinRelation.children.isEmpty) {
                                            final relation = sinRelation
                                                .copyWith(mainNode: node);
                                            context.read<PartnerFormBloc>().add(
                                                  PartnerFormEvent
                                                      .deleltPartner(
                                                    partner: partner,
                                                    relation: relation,
                                                  ),
                                                );
                                          } else {
                                            appSnackBar(
                                              context,
                                              text: getTr(context,
                                                  'cannot_delete_partner_with_children')!,
                                              type: SnackBarType.error,
                                            );
                                          }
                                        },
                                        icon: const Icon(Icons.close)),
                                  )
                              ],
                            ),
                            Row(
                              children: [
                                if (sinRelation.marriageDate != null) ...[
                                  Text(
                                    // TODO: add localization here
                                    'تاريخ الزواج: ${sinRelation.marriageDate!.year}',
                                    style: kCaption1Style.copyWith(
                                      color: kBlacksColor[600],
                                    ),
                                  ),
                                  kHSpacer20,
                                ],
                                Text(
                                  // TODO: add localization here
                                  'الحالة: ${marriageSt[sinRelation.marriageStatus]}${node.gender == Gender.male ? 'ة' : ''}',
                                  style: kCaption1Style.copyWith(
                                    color: kBlacksColor[600],
                                  ),
                                ),
                              ],
                            ),
                            kVSpacer10,
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            );
          },
          initial: (_) => const SizedBox(),
          getRelationInProgress: (_) => const SizedBox(),
          getAllRelationsInProgress: (_) => const SizedBox(),
          gettingAllRelationsFailure: (_) => const SizedBox(),
          gettingRelationFailure: (_) => const SizedBox(),
          gettingRelationSuccess: (_) => const SizedBox(),
        );
      },
    );
  }
}

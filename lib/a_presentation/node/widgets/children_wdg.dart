import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/a_shared/ui_helpers.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/b_application/node_bloc/node_watcher/node_watcher_bloc.dart';
import 'package:asl/b_application/relation_bloc/child_form/child_form_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChildrenWidget extends StatelessWidget {
  final TNode node;
  final MaterialColor color;
  const ChildrenWidget({
    super.key,
    required this.node,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NodeWatcherBloc, NodeWatcherState>(
      builder: (context, state) {
        return state.map(
          loadSuccess: (state) {
            final relations = state.root.relationsObject;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kVSpacer20,
                Text(
                  getNodeChildrenTitle(node.gender),
                  style: kHeadlineMedium,
                ),
                kVSpacer10,
                BlocBuilder<ChildFormBloc, ChildFormState>(
                  builder: (context, state) {
                    return ListView.builder(
                      itemCount: relations.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final sinRelation = relations[index];
                        final partner = sinRelation.partnerNode!;
                        final tempRelationChildren =
                            state.children[sinRelation.relationId.getOrCrash()];
                        print(
                            '15 | This is the tempRelationChildren $tempRelationChildren');

                        print('28 | relations.length: ${relations.length}');

                        final allChildren = [
                          ...sinRelation.childrenNodes,
                          ...?tempRelationChildren
                        ];
                        return allChildren.isNotEmpty
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'من ${getNodePartnerTitleSingle(node.gender)}',
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
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: allChildren.length,
                                    itemBuilder: (context, index) {
                                      final child = allChildren[index];
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 63,
                                            width: 278,
                                            child: AppFormField(
                                              label:
                                                  'الابن${child.gender == Gender.female ? 'ة' : ''}',
                                              hint: '',
                                              onSaved: (_) {},
                                              initialValue:
                                                  child.firstName.getOrCrash(),
                                              validator: (_) => '',
                                              isEditing: false,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              if (sinRelation.marriageDate !=
                                                  null) ...[
                                                Text(
                                                  'تاريخ الميلاد: ${child.birthDate!.year}',
                                                  style:
                                                      kCaption1Style.copyWith(
                                                    color: kBlacksColor[600],
                                                  ),
                                                ),
                                                kHSpacer20,
                                              ],
                                            ],
                                          ),
                                          kVSpacer10,
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
          },
          initial: (_) => const SizedBox(),
          gettingNodeFailure: (_) => const SizedBox(),
          gettingNodeSuccess: (_) => const SizedBox(),
          loadFailure: (_) => const SizedBox(),
          loadInProgress: (_) => const SizedBox(),
          inProgress: (_) => const SizedBox(),
        );
      },
    );
  }
}

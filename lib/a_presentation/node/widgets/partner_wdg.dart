import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/a_shared/ui_helpers.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/b_application/relation_bloc/partner_form/partner_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/relation_watcher/relation_watcher_bloc.dart';
import 'package:asl/b_application/tree_bloc/current_tree/current_tree_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/relation/relation.dart';
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
    return BlocListener<PartnerFormBloc, PartnerFormState>(
      listener: (context, state) {
        if (state.saveFailureOrSuccessOption.isSome()) {
          // After a partner is added the RelationWatcherBloc & NodeWatcherBloc
          // should reload the all the trees relation and nodes and rebuilt the tree UI

          print('017 | Its ChildFormBloc listening');
          final currentTree =
              context.read<CurrentTreeBloc>().state.currentTree!;

          context.read<RelationWatcherBloc>().add(
              RelationWatcherEvent.getAllRelations(
                  currentTree.treeId, currentTree.rootId));
        }
      },
      child: BlocBuilder<RelationWatcherBloc, RelationWatcherState>(
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

                      return GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          childAspectRatio: 3,
                        ),
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: allPartners.length,
                        itemBuilder: (context, index) {
                          final sinRelation = allPartners[index];
                          final partner = sinRelation.partnerNode!;
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 63,
                                width: 278,
                                child: AppFormField(
                                  label:
                                      'الزوج${node.gender == Gender.male ? 'ة' : ''}',
                                  hint: '',
                                  onSaved: (_) {},
                                  initialValue: partner.firstName.getOrCrash(),
                                  validator: (_) => '',
                                  isEditing: false,
                                ),
                              ),
                              Row(
                                children: [
                                  if (sinRelation.marriageDate != null) ...[
                                    Text(
                                      'تاريخ الزواج: ${sinRelation.marriageDate!.year}',
                                      style: kCaption1Style.copyWith(
                                        color: kBlacksColor[600],
                                      ),
                                    ),
                                    kHSpacer20,
                                  ],
                                  Text(
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
      ),
    );
  }
}

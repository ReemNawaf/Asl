import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/node/node_panel/relations_panel.dart';
import 'package:asl/a_presentation/node/widgets/children_wdg.dart';
import 'package:asl/b_application/relation_bloc/relation_watcher/relation_watcher_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PartnerWidget extends StatelessWidget {
  const PartnerWidget({
    super.key,
    required this.node,
  });

  final TNode node;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RelationWatcherBloc>(
      create: (context) => getIt<RelationWatcherBloc>()
        ..add(RelationWatcherEvent.getAllRelations(node.treeId, node.nodeId)),
      child: BlocBuilder<RelationWatcherBloc, RelationWatcherState>(
        builder: (context, state) {
          return state.map(
            gettingAllRelationsSuccess: (state) {
              final relations = state.relation;
              return SizedBox(
                width: (T_PAN_WIDTH - 10),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: relations.length,
                  itemBuilder: (context, index) {
                    final sinRelation = relations[index];
                    final partner = sinRelation!.partnerNode!;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
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
                            kHSpacer20,
                            Padding(
                              padding: const EdgeInsets.only(top: 24.0),
                              child: Row(
                                children: [
                                  Text(
                                    'تاريخ الزواج: ${sinRelation.marriageDate == null ? '' : sinRelation.marriageDate!.year}',
                                    style: kCaption1Style.copyWith(
                                      color: kBlacksColor[600],
                                    ),
                                  ),
                                  kHSpacer20,
                                  Text(
                                    'الحالة: ${marriageSt[sinRelation.marriageStatus]}${node.gender == Gender.male ? 'ة' : ''}',
                                    style: kCaption1Style.copyWith(
                                      color: kBlacksColor[600],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        kVSpacer10,
                        const SizedBox(
                          width: (T_PAN_WIDTH - 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ChildrenWidget(),
                              kVSpacer10,
                              // if (state.isAdding)
                              //   AppFormField(
                              //     label: 'إضافة ابن/ة',
                              //     hint: 'الاسم الأول',
                              //     validator: (_) => '',
                              //   ),
                              // AddMemberButton(
                              //   onPressed: () => state == const RelationActorState.startAddingChild() ? context
                              //       .read<RelationActorBloc>()
                              //       .add(const RelationActorEvent.startAddChild()) : context
                              //       .read<RelationActorBloc>()
                              //       .add( RelationActorEvent.addChild(treeId: node.treeId, relationId: node.nodeId, child: TNode.empty())),
                              //   label: 'إضافة ابن/ة',
                              //   color: color,
                              // ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              );
            },
            initial: (_) => const SizedBox(child: Text('1')),
            getRelationInProgress: (_) => const SizedBox(child: Text('2')),
            getAllRelationsInProgress: (_) => const SizedBox(child: Text('3')),
            gettingAllRelationsFailure: (_) => const SizedBox(child: Text('4')),
            gettingRelationFailure: (_) => const SizedBox(child: Text('5')),
            gettingRelationSuccess: (_) => const SizedBox(child: Text('6')),
          );
        },
      ),
    );
  }
}

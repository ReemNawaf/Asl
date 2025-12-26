import 'package:asl/a_presentation/a_shared/constants.dart';

import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/node/widgets/siblings_wdg.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/local_tree_views/tree_graph_store.dart';
import 'package:asl/c_domain/local_tree_views/tree_graph_ufamily_builder.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';

class ParentsSiblingsPanel extends StatelessWidget {
  const ParentsSiblingsPanel({
    super.key,
    required this.color,
    required this.store,
    required this.treeId,
    required this.personId,
  });

  final MaterialColor color;
  final TreeGraphStore store;
  final UniqueId treeId;
  final UniqueId personId;

  @override
  Widget build(BuildContext context) {
    final uFamily = TreeGraphUFamilyBuilder.build(
      store: store,
      treeId: treeId,
      personId: personId,
    );

    final size = MediaQuery.of(context).size;
    if (uFamily != null) {
      return Container(
        padding: const EdgeInsets.only(left: 10.0),
        height: PAN_HEIGHT,
        width: PAN_WIDTH - 106,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kVSpacer20,
              SizedBox(
                width: PAN_WIDTH - 106,
                height: 70,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: (PAN_WIDTH - 116) / 2,
                      height: 70,
                      child: AppFormField(
                        label: getTr(context, 'father')!,
                        hint: '',
                        onSaved: (_) {},
                        initialValue: uFamily.father.firstName.getOrCrash(),
                        validator: (_) => '',
                        isEditing: false,
                      ),
                    ),
                    kHSpacer10,
                    SizedBox(
                      width: (PAN_WIDTH - 116) / 2,
                      height: 70,
                      child: AppFormField(
                        label: getTr(context, 'mother')!,
                        hint: '',
                        onSaved: (_) {},
                        initialValue: uFamily.mother.firstName.getOrCrash(),
                        validator: (_) => '',
                        isEditing: false,
                      ),
                    ),
                  ],
                ),
              ),
              kHSpacer10,
              BrotherSisterssWidget(
                title: 'الأشقاء',
                size: size,
                brotherSisters: uFamily.siblings,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: uFamily.fatherHalfSiblings.length,
                  itemBuilder: (context, index) {
                    final stepMother =
                        uFamily.fatherHalfSiblings[index].partner;
                    return BrotherSisterssWidget(
                      title:
                          'الأخوان والأخوات من زوجة الأب ${stepMother.firstName.getOrCrash()}',
                      size: size,
                      brotherSisters:
                          uFamily.fatherHalfSiblings[index].halfSiblings,
                    );
                  }),
              ListView.builder(
                shrinkWrap: true,
                itemCount: uFamily.motherHalfSiblings.length,
                itemBuilder: (context, index) {
                  final stepfather = uFamily.motherHalfSiblings[index].partner;
                  return BrotherSisterssWidget(
                    title:
                        'الأخوان والأخوات من زوج الأم ${stepfather.firstName.getOrCrash()}',
                    size: size,
                    brotherSisters:
                        uFamily.motherHalfSiblings[index].halfSiblings,
                  );
                },
              ),
              kVSpacer10,
            ],
          ),
        ),
      );
    }
    return Center(
      child: Text(getTr(context, 'root_has_no_parents_siblings')!),
    );
  }
}

import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/node/widgets/siblings_wdg.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/local_tree_views/tree_graph_ufamily_builder.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ParentsSiblingsPanel extends StatelessWidget {
  const ParentsSiblingsPanel({
    super.key,
    required this.color,
    required this.treeId,
    required this.personId,
    required this.mainContext,
  });

  final MaterialColor color;
  final UniqueId treeId;
  final UniqueId personId;
  final BuildContext mainContext;

  @override
  Widget build(BuildContext context) {
    final store = mainContext.read<LocalTreeBloc>().state.store;
    final uFamily = TreeGraphUFamilyBuilder.build(
      store: store,
      treeId: treeId,
      personId: personId,
    );
    final fatherName = uFamily != null && uFamily.father.isUnknown
        ? getTr(context, 'no_name_provided')!
        : uFamily?.father.firstName.getOrCrash();
    final motherName = uFamily != null && uFamily.mother.isUnknown
        ? getTr(context, 'no_name_provided')!
        : uFamily?.father.firstName.getOrCrash();
    final size = MediaQuery.of(context).size;

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
                      initialValue: fatherName,
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
                      initialValue: motherName,
                      validator: (_) => '',
                      isEditing: false,
                    ),
                  ),
                ],
              ),
            ),
            kHSpacer10,
            BrotherSisterssWidget(
              title: getTr(context, 'siblings')!,
              size: size,
              brotherSisters: uFamily!.siblings,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: uFamily.fatherHalfSiblings.length,
                itemBuilder: (context, index) {
                  final stepMother = uFamily.fatherHalfSiblings[index].partner;

                  final stepMotherName = stepMother.isUnknown
                      ? getTr(context, 'no_name_provided')!
                      : stepMother.firstName.getOrCrash();
                  return BrotherSisterssWidget(
                    title:
                        '${getTr(context, "brothers_and_sisters_from_step_mother")} $stepMotherName',
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
                final stepfatherName = stepfather.isUnknown
                    ? getTr(context, 'no_name_provided')!
                    : stepfather.firstName.getOrCrash();
                return BrotherSisterssWidget(
                  title:
                      '${getTr(context, "brothers_and_sisters_from_step_father")} $stepfatherName',
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
}

import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/node/widgets/add_parent_list_wdg.dart';
import 'package:asl/a_presentation/node/widgets/child_alive_btn.dart';
import 'package:asl/a_presentation/node/widgets/child_gender_btn.dart';
import 'package:asl/b_application/relation_bloc/child_form/child_form_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/relation/relation.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:asl/a_presentation/core/app_date_field.dart';
import 'package:intl/intl.dart';

class AddChildWidget extends StatelessWidget {
  const AddChildWidget(
      {super.key,
      required this.node,
      required this.color,
      required this.relations});

  final TNode node;
  final MaterialColor color;
  final List<Relation?> relations;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return BlocBuilder<ChildFormBloc, ChildFormState>(
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages,
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TODO: add localization here
              const Text('إضافة ابن/ة'),
              kVSpacer20,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 250,
                    height: 90,
                    child: AppFormField(
                      // TODO: add localization here
                      label: 'الاسم',
                      // TODO: add localization here
                      hint: 'الاسم الأول',
                      onChanged: (value) => context
                          .read<ChildFormBloc>()
                          .add(ChildFormEvent.changeName(value!.trim())),
                      isValid: context
                          .read<ChildFormBloc>()
                          .state
                          .tempChild
                          .firstName
                          .isValid(),
                      validator: (_) {
                        // if the name isn't valid, then show me the validation
                        return context
                            .read<ChildFormBloc>()
                            .state
                            .tempChild
                            .firstName
                            .value
                            .fold(
                              (f) => f.maybeMap(
                                empty: (_) => getTr(
                                    context, 'first_name_cannot_be_empty'),
                                shortFirstName: (_) =>
                                    getTr(context, 'first_name_short'),
                                spacedFirstName: (_) => getTr(context,
                                    'first_name_cannot_contain_spaces'),
                                orElse: () => null,
                              ),
                              (_) => null,
                            );
                      },
                    ),
                  ),
                  kHSpacer20,
                  AddParentDropListWidget(
                      relations: relations, gender: node.gender),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 250,
                        height: 80,
                        child: AppDateField(
                          formKey: formKey,
                          // TODO: add localization here
                          label: 'تاريخ الميلاد',
                          hint: '',
                          endDate: state.tempChild.deathDate
                                  ?.subtract(const Duration(days: 1)) ??
                              DateTime.now(),
                          startDate: DateTime(1000),
                          validate: (validate) => "",
                          save: (_) {},
                          isEditing: true,
                          changeDate: (pickedDate) {
                            context.read<ChildFormBloc>().add(
                                  ChildFormEvent.changeBirthDate(pickedDate),
                                );
                          },
                          dateController: TextEditingController(
                            text: state.tempChild.birthDate == null
                                ? ''
                                : DateFormat.yMMMd()
                                    .format(state.tempChild.birthDate!),
                          ),
                          withPadding: false,
                        ),
                      ),
                      kVSpacer5,
                      SizedBox(
                        width: 250,
                        height: 80,
                        child: state.tempChild.isAlive
                            ? const SizedBox()
                            : AppDateField(
                                formKey: formKey,
                                // TODO: add localization here
                                label: 'تاريخ الوفاة',
                                hint: '',
                                validate: (validate) => "",
                                isEditing: true,
                                save: (_) {},
                                changeDate: (pickedDate) {
                                  context.read<ChildFormBloc>().add(
                                        ChildFormEvent.changeDeathDate(
                                          pickedDate,
                                        ),
                                      );
                                },
                                startDate: state.tempChild.birthDate
                                        ?.add(const Duration(days: 1)) ??
                                    DateTime(1000),
                                endDate: DateTime.now(),
                                dateController: TextEditingController(
                                  text: state.tempChild.deathDate == null
                                      ? ''
                                      : DateFormat.yMMMd()
                                          .format(state.tempChild.deathDate!),
                                ),
                                withPadding: false,
                              ),
                      ),
                    ],
                  ),
                  kHSpacer20,
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: ChildAliveBtn(color: color, ctx: context),
                      ),
                      kVSpacer10,
                      Padding(
                        padding: const EdgeInsets.only(top: 13.0),
                        child: ChildGenderBtn(color: color, ctx: context),
                      ),
                    ],
                  )
                ],
              ),
              kVSpacer10,
            ],
          ),
        );
      },
    );
  }
}

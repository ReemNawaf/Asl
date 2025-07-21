import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/node/widgets/add_parent_list_wdg.dart';
import 'package:asl/a_presentation/node/widgets/child_alive_btn.dart';
import 'package:asl/b_application/relation_bloc/child_form/child_form_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/relation/relation.dart';
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
              kVSpacer10,
              AddParentDropListWidget(relations: relations),
              kVSpacer20,
              Row(
                children: [
                  SizedBox(
                    width: 250,
                    height: 90,
                    child: AppFormField(
                      label: 'إضافة ابن/ة',
                      hint: 'الاسم الأول',
                      onChanged: (value) => context
                          .read<ChildFormBloc>()
                          .add(ChildFormEvent.changeName(value!.trim())),
                      isValid: context
                                  .read<ChildFormBloc>()
                                  .state
                                  .showErrorMessages !=
                              AutovalidateMode.always ||
                          context
                              .read<ChildFormBloc>()
                              .state
                              .child
                              .firstName
                              .isValid(),
                      validator: (_) {
                        return state.child.firstName.value.fold(
                          (f) => f.maybeMap(
                            empty: (_) => 'الاسم الأول لا يمكن أن يكون فارغًا',
                            spacedFirstName: (_) =>
                                'الاسم الأول لا يمكن أن يحتوي على مسافات',
                            orElse: () => null,
                          ),
                          (_) => null,
                        );
                      },
                    ),
                  ),
                  kHSpacer20,
                  ChildAliveBtn(color: color, ctx: context),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 230,
                    height: 80,
                    child: AppDateField(
                      formKey: formKey,
                      label: 'تاريخ الميلاد',
                      hint: '',
                      endDate: state.child.deathDate
                          ?.subtract(const Duration(days: 1)),
                      validate: (validate) => "",
                      save: (_) {},
                      isEditing: true,
                      changeDate: (pickedDate) {
                        context.read<ChildFormBloc>().add(
                              ChildFormEvent.changeBirthDate(pickedDate),
                            );
                      },
                      dateController: TextEditingController(
                        text: state.child.birthDate == null
                            ? ''
                            : DateFormat.yMMMd().format(state.child.birthDate!),
                      ),
                      withPadding: false,
                    ),
                  ),
                  if (!state.child.isAlive) ...[
                    kHSpacer40,
                    SizedBox(
                      width: 230,
                      height: 80,
                      child: AppDateField(
                        formKey: formKey,
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
                        startDate: state.child.birthDate?.add(
                          const Duration(days: 1),
                        ),
                        endDate: DateTime.now(),
                        dateController: TextEditingController(
                          text: state.child.deathDate == null
                              ? ''
                              : DateFormat.yMMMd()
                                  .format(state.child.deathDate!),
                        ),
                        withPadding: false,
                      ),
                    ),
                  ]
                ],
              )
            ],
          ),
        );
      },
    );
  }
}

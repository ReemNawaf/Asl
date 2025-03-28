import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/core/widgets/app_member_btn.dart';
import 'package:asl/a_presentation/node/node_panel/node_alive_btn.dart';
import 'package:asl/a_presentation/node/node_panel/relations_panel.dart';
import 'package:asl/b_application/relation_bloc/child_form/child_form_bloc.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:asl/a_presentation/core/app_date_field.dart';
import 'package:intl/intl.dart';

class AddChildWidget extends StatelessWidget {
  const AddChildWidget({
    super.key,
    required this.node,
    required this.color,
    required this.state,
    required this.upperFamily,
    required this.treeId,
  });

  final TNode node;
  final MaterialColor color;
  final ChildFormState state;
  final UniqueId upperFamily;
  final UniqueId treeId;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (state.isAdding) ...[
          Form(
            autovalidateMode: state.showErrorMessages,
            key: formKey,
            child: SizedBox(
              width: (T_PAN_WIDTH - 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kVSpacer10,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                empty: (_) => 'الاسم الأول يمكن أن يكون فارغًا',
                                spacedFirstName: (_) =>
                                    'الاسم الأول لا يمكن أن يحتوي على مسافات',
                                orElse: () => null,
                              ),
                              (_) => null,
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: NodeAliveBtn(color: color, ctx: context),
                      ),
                    ],
                  ),
                  kHSpacer10,
                  BlocBuilder<ChildFormBloc, ChildFormState>(
                    builder: (context, state) {
                      return SizedBox(
                        width: 600,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 230,
                              height: 80,
                              child: AppDateField(
                                formKey: formKey,
                                label: 'تاريخ الميلاد',
                                hint: '',
                                endDate: state.child.deathDate,
                                validate: (validate) => "",
                                save: (_) {},
                                isEditing: true,
                                changeDate: (pickedDate) {
                                  context.read<ChildFormBloc>().add(
                                      ChildFormEvent.changeBirthDate(
                                          pickedDate));
                                },
                                dateController: TextEditingController(
                                  text: state.child.birthDate == null
                                      ? ''
                                      : DateFormat.yMMMd()
                                          .format(state.child.birthDate!),
                                ),
                                withPadding: false,
                              ),
                            ),
                            if (state.child.isAlive != false)
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
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
        AddMemberButton(
          onPressed: () {
            state.isAdding
                ? context
                    .read<ChildFormBloc>()
                    .add(const ChildFormEvent.saved())
                : context.read<ChildFormBloc>().add(ChildFormEvent.initialized(
                    treeId: treeId, upperFamily: upperFamily));
          },
          label: 'إضافة ابن/ة',
          color: color,
        )
      ],
    );
  }
}

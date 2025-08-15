import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/strings.dart';
import 'package:asl/a_presentation/core/app_date_field.dart';
import 'package:asl/a_presentation/node/node_panel/node_alive_btn.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/node/widgets/node_gender_btn.dart';
import 'package:asl/a_presentation/core/widgets/tree_btn.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class InfoPanel extends StatelessWidget {
  const InfoPanel({
    super.key,
    required this.color,
    required this.ctx,
    this.showErrorMessages,
  });

  final MaterialColor color;
  final BuildContext ctx;
  final AutovalidateMode? showErrorMessages;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return BlocBuilder<NodeFormBloc, NodeFormState>(
      builder: (_, state) {
        return state.hasNode
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kVSpacer30,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 28.0),
                        width: 250,
                        height: 90,
                        child: AppFormField(
                          label: 'الاسم الأول',
                          hint: 'مثل: محمد',
                          onSaved: (_) {},
                          initialValue: state.node.firstName.getOrCrash(),
                          onChanged: (value) => context
                              .read<NodeFormBloc>()
                              .add(NodeFormEvent.firstNameChanged(
                                  value!.trim())),
                          validator: (_) {
                            return state.node.firstName.value.fold(
                              (f) => f.maybeMap(
                                empty: (_) => ARABIC_STRINGS[
                                    'first_name_cannot_be_empty'],
                                spacedFirstName: (_) => ARABIC_STRINGS[
                                    'first_name_cannot_contain_spaces'],
                                orElse: () => null,
                              ),
                              (_) => null,
                            );
                          },
                          isValid:
                              AutovalidateMode.always != showErrorMessages ||
                                  state.node.firstName.isValid(),
                          isEditing: state.isEditing == 0,
                        ),
                      ),
                      kHSpacer10,
                      NodeGenderBtn(
                          color: color,
                          ctx: ctx,
                          isEditing: state.isEditing == 0),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 250,
                        height: 80,
                        child: AppDateField(
                          formKey: formKey,
                          label: 'تاريخ الميلاد',
                          hint: '',
                          validate: (validate) => "",
                          save: (_) {},
                          endDate: state.node.deathDate
                                  ?.subtract(const Duration(days: 1)) ??
                              DateTime.now(),
                          startDate: DateTime(1000),
                          changeDate: (pickedDate) => ctx
                              .read<NodeFormBloc>()
                              .add(NodeFormEvent.birthDateChanged(pickedDate)),
                          dateController: TextEditingController(
                            text: state.node.birthDate == null
                                ? 'لا يوجد تاريخ ميلاد'
                                : DateFormat.yMMMd()
                                    .format(state.node.birthDate!),
                          ),
                          isEditing: state.isEditing == 0,
                        ),
                      ),
                      if (state.node.isAlive) ...[
                        kHSpacer20,
                        NodeAliveBtn(
                            color: color,
                            ctx: ctx,
                            isEditing: state.isEditing == 0),
                      ] else
                        SizedBox(
                          width: 250,
                          height: 80,
                          child: AppDateField(
                            formKey: formKey,
                            label: 'تاريخ الوفاة',
                            hint: '',
                            validate: (validate) => "",
                            save: (_) {},
                            changeDate: (pickedDate) => ctx
                                .read<NodeFormBloc>()
                                .add(
                                    NodeFormEvent.deathDateChanged(pickedDate)),
                            dateController: TextEditingController(
                              text: state.node.deathDate == null
                                  ? 'لا يوجد تاريخ وفاة'
                                  : DateFormat.yMMMd()
                                      .format(state.node.deathDate!),
                            ),
                            isEditing: state.isEditing == 0,
                            startDate: state.node.birthDate
                                    ?.add(const Duration(days: 1)) ??
                                DateTime(1000),
                            endDate: DateTime.now(),
                          ),
                        ),
                    ],
                  ),
                  kVSpacer20,
                  TreeButton(color: color)
                ],
              )
            : const SizedBox();
      },
    );
  }
}

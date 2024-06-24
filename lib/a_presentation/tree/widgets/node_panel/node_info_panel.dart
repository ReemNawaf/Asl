import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/app_date_field.dart';
import 'package:asl/a_presentation/tree/widgets/node_panel/node_alive_btn.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/tree/widgets/node_panel/node_gender_btn.dart';
import 'package:asl/a_presentation/core/widgets/tree_btn.dart';
import 'package:asl/b_application/node/node_form/node_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class InfoPanel extends StatelessWidget {
  const InfoPanel({
    super.key,
    required this.size,
    required this.color,
    this.height = 0.45,
    required this.ctx,
    this.showErrorMessages,
  });

  final Size size;
  final MaterialColor color;
  final double height;
  final BuildContext ctx;
  final AutovalidateMode? showErrorMessages;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return BlocBuilder<NodeFormBloc, NodeFormState>(
      builder: (context, state) {
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
                                empty: (_) => 'الاسم الأول يمكن أن يكون فارغًا',
                                spacedFirstName: (_) =>
                                    'الاسم الأول لا يمكن أن يحتوي على مسافات',
                                orElse: () => null,
                              ),
                              (_) => null,
                            );
                          },
                          isValid:
                              AutovalidateMode.always != showErrorMessages ||
                                  state.node.firstName.isValid(),
                          isEditing: state.isEditing,
                        ),
                      ),
                      kHSpacer10,
                      NodeGenderBtn(
                          color: color,
                          size: size,
                          ctx: ctx,
                          isEditing: state.isEditing),
                    ],
                  ),
                  BlocBuilder<NodeFormBloc, NodeFormState>(
                    builder: (context, state) {
                      return Row(
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
                              changeDate: (pickedDate) => context
                                  .read<NodeFormBloc>()
                                  .add(NodeFormEvent.birthDateChanged(
                                      pickedDate)),
                              dateController: TextEditingController(
                                text: state.node.birthDate == null
                                    ? ''
                                    : DateFormat.yMMMd()
                                        .format(state.node.birthDate!),
                              ),
                              isEditing: state.isEditing,
                            ),
                          ),
                          if (state.node.isAlive) ...[
                            kHSpacer20,
                            NodeAliveBtn(
                                color: color,
                                size: size,
                                ctx: ctx,
                                isEditing: state.isEditing),
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
                                changeDate: (pickedDate) => context
                                    .read<NodeFormBloc>()
                                    .add(NodeFormEvent.deathDateChanged(
                                        pickedDate)),
                                dateController: TextEditingController(
                                  text: state.node.birthDate == null
                                      ? ''
                                      : DateFormat.yMMMd()
                                          .format(state.node.deathDate!),
                                ),
                                isEditing: state.isEditing,
                              ),
                            ),
                        ],
                      );
                    },
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

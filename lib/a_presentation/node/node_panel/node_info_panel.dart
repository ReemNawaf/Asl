import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/strings.dart';
import 'package:asl/a_presentation/core/app_date_field.dart';
import 'package:asl/a_presentation/node/node_panel/node_alive_btn.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/node/widgets/node_gender_btn.dart';
import 'package:asl/a_presentation/core/widgets/tree_btn.dart';
import 'package:asl/a_presentation/node/widgets/node_id_wdg.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class InfoPanel extends StatelessWidget {
  const InfoPanel({
    super.key,
    required this.color,
    required this.contextDialog,
  });

  final MaterialColor color;
  final BuildContext contextDialog;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return BlocBuilder<NodeFormBloc, NodeFormState>(
      builder: (ctx, state) {
        final node = state.node;

        if (node == null) return const SizedBox();

        return Form(
          autovalidateMode: state.showErrorMessages,
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kVSpacer30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 250,
                      height: 90,
                      child: AppFormField(
                        label: 'الاسم الأول',
                        hint: 'مثل: محمد',
                        initialValue: state.node!.firstName.isValid()
                            ? state.node!.firstName.getOrCrash()
                            : '',
                        onChanged: (value) => context
                            .read<NodeFormBloc>()
                            .add(NodeFormEvent.firstNameChanged(value!.trim())),
                        validator: (_) {
                          print(
                              '09 | validation ${context.read<NodeFormBloc>().state.node!.firstName.value}');
                          return context
                              .read<NodeFormBloc>()
                              .state
                              .node!
                              .firstName
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  empty: (_) => ARABIC_STRINGS[
                                      'first_name_cannot_be_empty'],
                                  spacedFirstName: (_) => ARABIC_STRINGS[
                                      'first_name_cannot_contain_spaces'],
                                  shortFirstName: (_) =>
                                      ARABIC_STRINGS['first_name_short'],
                                  orElse: () => null,
                                ),
                                (_) => null,
                              );
                        },
                        isValid: state.node!.firstName.isValid(),
                        isEditing: state.isEditing == 0,
                      ),
                    ),
                    kHSpacer20,
                    if (state.node!.relations.isEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 1.0),
                        child: NodeGenderBtn(
                            color: color,
                            ctx: context,
                            isEditing: state.isEditing == 0),
                      ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 250,
                          height: 80,
                          child: AppDateField(
                            formKey: formKey,
                            label: 'تاريخ الميلاد',
                            hint: '',
                            withPadding: false,
                            validate: (validate) => "",
                            save: (_) {},
                            endDate: state.node!.deathDate
                                    ?.subtract(const Duration(days: 1)) ??
                                DateTime.now(),
                            startDate: DateTime(1000),
                            changeDate: (pickedDate) => context
                                .read<NodeFormBloc>()
                                .add(
                                    NodeFormEvent.birthDateChanged(pickedDate)),
                            dateController: TextEditingController(
                              text: state.node!.birthDate == null
                                  ? 'لا يوجد تاريخ ميلاد'
                                  : DateFormat.yMMMd()
                                      .format(state.node!.birthDate!),
                            ),
                            isEditing: state.isEditing == 0,
                          ),
                        ),
                        if (!state.node!.isAlive)
                          SizedBox(
                            width: 250,
                            height: 80,
                            child: AppDateField(
                              formKey: formKey,
                              label: 'تاريخ الوفاة',
                              withPadding: false,
                              hint: '',
                              validate: (validate) => "",
                              save: (_) {},
                              changeDate: (pickedDate) => context
                                  .read<NodeFormBloc>()
                                  .add(NodeFormEvent.deathDateChanged(
                                      pickedDate)),
                              dateController: TextEditingController(
                                text: state.node!.deathDate == null
                                    ? 'لا يوجد تاريخ وفاة'
                                    : DateFormat.yMMMd()
                                        .format(state.node!.deathDate!),
                              ),
                              isEditing: state.isEditing == 0,
                              startDate: state.node!.birthDate
                                      ?.add(const Duration(days: 1)) ??
                                  DateTime(1000),
                              endDate: DateTime.now(),
                            ),
                          ),
                      ],
                    ),
                    kHSpacer20,
                    Padding(
                      padding: const EdgeInsets.only(top: 14.0),
                      child: NodeAliveBtn(
                        color: color,
                        ctx: context,
                        isEditing: state.isEditing == 0,
                      ),
                    ),
                  ],
                ),
                kVSpacer20,
                TreeButton(color: color),
                NodeIdWidget(
                  contextDialog: contextDialog,
                  id: state.node!.nodeId.getOrCrash(),
                  color: color,
                  // TODO: get the node full name
                  name: state.node!.firstName.getOrCrash(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

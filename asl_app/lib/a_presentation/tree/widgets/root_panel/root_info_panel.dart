import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/app_date_field.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/tree/widgets/root_panel/root_alive_btn.dart';
import 'package:asl/a_presentation/tree/widgets/root_panel/root_gender_btn.dart';
import 'package:asl/b_application/tree_bloc/tree_form/tree_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class RootInfoPanel extends StatelessWidget {
  const RootInfoPanel({
    super.key,
    required this.color,
    this.height = 0.45,
    required this.ctx,
    this.showErrorMessages,
  });

  final MaterialColor color;
  final double height;
  final BuildContext ctx;
  final AutovalidateMode? showErrorMessages;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        kVSpacer20,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(right: 28.0),
              width: 250,
              height: 90,
              child: AppFormField(
                label: 'الاسم*',
                hint: 'الاسم الأول والأخير',
                onSaved: (_) {},
                initialValue: '',
                onChanged: (value) => context
                    .read<TreeFormBloc>()
                    .add(TreeFormEvent.changeRootName(value!.trim())),
                validator: (_) {
                  return context
                      .read<TreeFormBloc>()
                      .state
                      .tree
                      .fullName
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          empty: (_) => 'اسم جذر العائلة يمكن أن يكون فارغًا',
                          orElse: () => null,
                        ),
                        (_) => null,
                      );
                },
                isValid: AutovalidateMode.always != showErrorMessages ||
                    context.read<TreeFormBloc>().state.tree.fullName.isValid(),
              ),
            ),
            kHSpacer10,
            RootGenderBtn(color: color, ctx: ctx),
          ],
        ),
        BlocBuilder<TreeFormBloc, TreeFormState>(
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 230,
                  height: 80,
                  child: AppDateField(
                    formKey: formKey,
                    label: 'تاريخ الميلاد',
                    hint: '',
                    endDate: state.root.deathDate
                            ?.subtract(const Duration(days: 1)) ??
                        DateTime.now(),
                    startDate: DateTime(1000),
                    validate: (validate) => "",
                    save: (_) {},
                    isEditing: true,
                    changeDate: (pickedDate) {
                      context
                          .read<TreeFormBloc>()
                          .add(TreeFormEvent.changeRootBirthDate(pickedDate));
                    },
                    dateController: TextEditingController(
                      text: state.root.birthDate == null
                          ? ''
                          : DateFormat.yMMMd().format(state.root.birthDate!),
                    ),
                  ),
                ),
                if (state.root.isAlive) ...[
                  kHSpacer20,
                  RootAliveBtn(color: color, ctx: ctx)
                ] else
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
                        context
                            .read<TreeFormBloc>()
                            .add(TreeFormEvent.changeRootDeathDate(pickedDate));
                      },
                      startDate:
                          state.root.birthDate?.add(const Duration(days: 1)) ??
                              DateTime(1000),
                      endDate: DateTime.now(),
                      dateController: TextEditingController(
                        text: state.root.deathDate == null
                            ? ''
                            : DateFormat.yMMMd().format(state.root.deathDate!),
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }
}

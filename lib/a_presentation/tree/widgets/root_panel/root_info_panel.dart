import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/app_date_field.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/tree/widgets/root_panel/root_alive_btn.dart';
import 'package:asl/a_presentation/tree/widgets/root_panel/root_gender_btn.dart';
import 'package:asl/b_application/tree/tree_form/tree_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class RootInfoPanel extends StatelessWidget {
  const RootInfoPanel({
    super.key,
    required this.size,
    required this.color,
    this.isAlive = true,
    this.height = 0.45,
    required this.ctx,
    this.showErrorMessages,
  });

  final Size size;
  final MaterialColor color;
  final double height;
  final bool isAlive;
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
                label: 'الاسم',
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
            RootGenderBtn(color: color, size: size, ctx: ctx),
          ],
        ),
        BlocBuilder<TreeFormBloc, TreeFormState>(
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
                if (isAlive) ...[
                  kHSpacer20,
                  RootAliveBtn(color: color, size: size, ctx: ctx)
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
                      changeDate: (pickedDate) {
                        context
                            .read<TreeFormBloc>()
                            .add(TreeFormEvent.changeRootDeathDate(pickedDate));
                      },
                      dateController: TextEditingController(
                        text: state.root.birthDate == null
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

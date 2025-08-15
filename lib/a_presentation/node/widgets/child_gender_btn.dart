import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/tree/widgets/root_panel/root_gender_btn.dart';
import 'package:asl/b_application/relation_bloc/child_form/child_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootGenderBtn extends StatelessWidget {
  const RootGenderBtn({
    super.key,
    required this.color,
    required this.ctx,
  });

  final MaterialColor color;
  final BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    void maleOrFemale(BuildContext ctx, {required bool isMaleSelected}) {
      if (isMaleSelected == true) {
        ctx
            .read<ChildFormBloc>()
            .add(const ChildFormEvent.changeGender(Gender.male));
      } else {
        ctx
            .read<ChildFormBloc>()
            .add(const ChildFormEvent.changeGender(Gender.female));
      }
    }

    return BlocBuilder<ChildFormBloc, ChildFormState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: Row(
            children: [
              GenderButton(
                onTap: () => maleOrFemale(context, isMaleSelected: true),
                color: color,
                text: 'ذكر',
                gender: Gender.male,
                selected: Gender.male == state.tempChild.gender,
              ),
              const SizedBox(width: 16.0),
              GenderButton(
                onTap: () => maleOrFemale(context, isMaleSelected: false),
                color: color,
                text: 'أنثى',
                gender: Gender.female,
                selected: Gender.female == state.tempChild.gender,
              ),
            ],
          ),
        );
      },
    );
  }
}

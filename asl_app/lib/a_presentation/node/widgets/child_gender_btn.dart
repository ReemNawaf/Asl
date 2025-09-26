import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/widgets/gender_wdg.dart';
import 'package:asl/b_application/relation_bloc/child_form/child_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChildGenderBtn extends StatelessWidget {
  const ChildGenderBtn({
    super.key,
    required this.color,
    required this.ctx,
  });

  final MaterialColor color;
  final BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    void femaleOrMale({required bool isFemaleSelected}) {
      if (isFemaleSelected == true) {
        ctx
            .read<ChildFormBloc>()
            .add(const ChildFormEvent.changeGender(Gender.female));
      } else {
        ctx
            .read<ChildFormBloc>()
            .add(const ChildFormEvent.changeGender(Gender.male));
      }
    }

    return BlocBuilder<ChildFormBloc, ChildFormState>(
      builder: (context, state) {
        return GenderWidget(
          color: color,
          gender: state.tempChild.gender,
          femaleOrMale: femaleOrMale,
        );
      },
    );
  }
}

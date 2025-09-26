import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/widgets/gender_btn.dart';
import 'package:asl/b_application/tree_bloc/tree_form/tree_form_bloc.dart';
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
    void femaleOrMale({required bool isFemaleSelected}) {
      if (isFemaleSelected == true) {
        ctx
            .read<TreeFormBloc>()
            .add(const TreeFormEvent.changeRootGender(Gender.female));
      } else {
        ctx
            .read<TreeFormBloc>()
            .add(const TreeFormEvent.changeRootGender(Gender.male));
      }
    }

    return BlocBuilder<TreeFormBloc, TreeFormState>(
      builder: (context, state) {
        return GenderWidget(
          color: color,
          gender: state.root.gender,
          femaleOrMale: femaleOrMale,
        );
      },
    );
  }
}

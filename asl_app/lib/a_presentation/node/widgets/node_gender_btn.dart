import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/widgets/gender_wdg.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NodeGenderBtn extends StatelessWidget {
  const NodeGenderBtn({
    super.key,
    required this.color,
    required this.ctx,
    this.isEditing = true,
  });

  final MaterialColor color;
  final BuildContext ctx;
  final bool isEditing;

  @override
  Widget build(BuildContext context) {
    void femaleOrMale({required bool isFemaleSelected}) {
      if (isFemaleSelected == true) {
        ctx
            .read<NodeFormBloc>()
            .add(const NodeFormEvent.changeGender(Gender.female));
      } else {
        ctx
            .read<NodeFormBloc>()
            .add(const NodeFormEvent.changeGender(Gender.male));
      }
    }

    return BlocBuilder<NodeFormBloc, NodeFormState>(
      builder: (context, state) {
        return GenderWidget(
            color: color,
            gender: state.node!.gender,
            femaleOrMale: femaleOrMale);
      },
    );
  }
}

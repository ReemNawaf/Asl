import 'package:asl/a_presentation/core/widgets/alive_button.dart';
import 'package:asl/b_application/relation_bloc/child_form/child_form_bloc.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChildAliveBtn extends StatelessWidget {
  const ChildAliveBtn({
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
    void aliveOrDead({required bool isAliveSelected}) {
      if (isAliveSelected == true) {
        ctx.read<ChildFormBloc>().add(const ChildFormEvent.changeIsAlive(true));
      } else {
        ctx
            .read<ChildFormBloc>()
            .add(const ChildFormEvent.changeIsAlive(false));
      }
    }

    return BlocBuilder<ChildFormBloc, ChildFormState>(
      builder: (context, state) {
        return Row(
          children: [
            AliveButton(
              onTap: () => aliveOrDead(isAliveSelected: true),
              color: color,
              text: getTr(context, 'alive')!,
              selected: state.tempChild.isAlive,
            ),
            const SizedBox(width: 16.0),
            AliveButton(
              onTap: () => aliveOrDead(isAliveSelected: false),
              color: color,
              // TODO: add localization here
              text: getTr(context, 'dead')!,
              selected: !state.tempChild.isAlive,
            ),
          ],
        );
      },
    );
  }
}

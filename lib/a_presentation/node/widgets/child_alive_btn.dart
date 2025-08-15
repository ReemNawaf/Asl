import 'package:asl/a_presentation/tree/widgets/root_panel/root_alive_btn.dart';
import 'package:asl/b_application/relation_bloc/child_form/child_form_bloc.dart';
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
              onTap: () =>
                  isEditing ? aliveOrDead(isAliveSelected: true) : null,
              color: color,
              text: 'عائش',
              selected: state.tempChild.isAlive,
            ),
            const SizedBox(width: 16.0),
            AliveButton(
              onTap: () =>
                  isEditing ? aliveOrDead(isAliveSelected: false) : null,
              color: color,
              text: 'متوفي',
              selected: !state.tempChild.isAlive,
            ),
          ],
        );
      },
    );
  }
}

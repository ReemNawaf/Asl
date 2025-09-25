import 'package:asl/a_presentation/core/widgets/alive_button.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NodeAliveBtn extends StatelessWidget {
  const NodeAliveBtn({
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
        ctx.read<NodeFormBloc>().add(const NodeFormEvent.changeIsAvlive(true));
      } else {
        ctx.read<NodeFormBloc>().add(const NodeFormEvent.changeIsAvlive(false));
      }
    }

    return BlocBuilder<NodeFormBloc, NodeFormState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Row(
            children: [
              AliveButton(
                onTap: () =>
                    isEditing ? aliveOrDead(isAliveSelected: true) : null,
                color: color,
                text: getTr(context, 'alive')!,
                selected: state.node!.isAlive,
              ),
              const SizedBox(width: 16.0),
              AliveButton(
                onTap: () =>
                    isEditing ? aliveOrDead(isAliveSelected: false) : null,
                color: color,
                text: getTr(context, 'dead')!,
                selected: !state.node!.isAlive,
              ),
            ],
          ),
        );
      },
    );
  }
}

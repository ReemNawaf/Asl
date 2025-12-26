import 'package:asl/a_presentation/core/widgets/alive_wdg.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
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
        return AliveWidget(
          color: color,
          isEditing: isEditing,
          isAlive: state.node!.isAlive,
          aliveOrDead: aliveOrDead,
        );
      },
    );
  }
}

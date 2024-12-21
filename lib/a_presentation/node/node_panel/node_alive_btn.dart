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
        return Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Row(
            children: [
              AliveButton(
                onTap: () =>
                    isEditing ? aliveOrDead(isAliveSelected: true) : null,
                color: color,
                text: 'عائش',
                selected: state.node.isAlive,
              ),
              const SizedBox(width: 16.0),
              AliveButton(
                onTap: () =>
                    isEditing ? aliveOrDead(isAliveSelected: false) : null,
                color: color,
                text: 'متوفي',
                selected: !state.node.isAlive,
              ),
            ],
          ),
        );
      },
    );
  }
}

class AliveButton extends StatelessWidget {
  const AliveButton({
    super.key,
    required this.color,
    required this.text,
    required this.selected,
    required this.onTap,
  });

  final MaterialColor color;
  final String text;
  final bool selected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: selected ? color[300] : color[600],
          borderRadius: BorderRadius.circular(8.0),
        ),
        height: 36,
        width: 94,
        child: Text(text),
      ),
    );
  }
}

import 'package:asl/b_application/node/node_form/node_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NodeAliveBtn extends StatelessWidget {
  const NodeAliveBtn({
    super.key,
    required this.color,
    required this.size,
    required this.ctx,
  });

  final MaterialColor color;
  final Size size;
  final BuildContext ctx;

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
                onTap: () => aliveOrDead(isAliveSelected: true),
                color: color,
                size: size,
                text: 'عائش',
                selected: state.node.isAlive,
              ),
              const SizedBox(width: 16.0),
              AliveButton(
                onTap: () => aliveOrDead(isAliveSelected: false),
                color: color,
                size: size,
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
    required this.size,
    required this.text,
    required this.selected,
    required this.onTap,
  });

  final MaterialColor color;
  final Size size;
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

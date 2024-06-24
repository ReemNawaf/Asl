import 'package:asl/b_application/tree/tree_form/tree_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootAliveBtn extends StatelessWidget {
  const RootAliveBtn({
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
        ctx
            .read<TreeFormBloc>()
            .add(const TreeFormEvent.changeRootIsAvlive(true));
      } else {
        ctx
            .read<TreeFormBloc>()
            .add(const TreeFormEvent.changeRootIsAvlive(false));
      }
    }

    return BlocBuilder<TreeFormBloc, TreeFormState>(
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
                selected: state.root.isAlive,
              ),
              const SizedBox(width: 16.0),
              AliveButton(
                onTap: () => aliveOrDead(isAliveSelected: false),
                color: color,
                size: size,
                text: 'متوفي',
                selected: !state.root.isAlive,
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

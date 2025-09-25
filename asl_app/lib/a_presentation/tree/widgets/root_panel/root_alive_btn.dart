import 'package:asl/a_presentation/core/widgets/alive_button.dart';
import 'package:asl/b_application/tree_bloc/tree_form/tree_form_bloc.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootAliveBtn extends StatelessWidget {
  const RootAliveBtn({
    super.key,
    required this.color,
    required this.ctx,
  });

  final MaterialColor color;
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
                text: getTr(context, 'alive')!,
                selected: state.root.isAlive,
              ),
              const SizedBox(width: 16.0),
              AliveButton(
                onTap: () => aliveOrDead(isAliveSelected: false),
                color: color,
                text: getTr(context, 'dead')!,
                selected: !state.root.isAlive,
              ),
            ],
          ),
        );
      },
    );
  }
}

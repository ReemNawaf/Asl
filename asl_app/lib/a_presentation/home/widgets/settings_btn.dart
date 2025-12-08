import 'package:asl/a_presentation/core/widgets/app_btn.dart';
import 'package:asl/a_presentation/home/widgets/share_tree.dart';
import 'package:asl/b_application/tree_bloc/current_tree/current_tree_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentTreeBloc, CurrentTreeState>(
      builder: (_, state) {
        if (state.currentTree != null) {
          return AppButton(
            onPressed: () => showSettingsPanel(context),
            label: 'إعدادات',
            fillColor: const Color(0xFFFFEFE2),
            textColor: const Color(0xFF303030),
            icon: const Icon(Icons.settings),
            hasIcon: true,
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}

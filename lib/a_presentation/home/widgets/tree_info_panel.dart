import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/b_application/tree_bloc/tree_settings/tree_settings_bloc.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';

class TreeInfoPanel extends StatelessWidget {
  const TreeInfoPanel({
    super.key,
    required this.size,
    required this.local,
    required this.state,
  });

  final Size size;
  final Locale local;
  final TreeSettingsState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: state.hideSidbar
          ? size.width * (SIDE_BAR_WIDTH + CENTER_WIDTH) - ARROW_BTN_WIDTH
          : size.width * CENTER_WIDTH,
      alignment: local.languageCode == arabic
          ? Alignment.bottomLeft
          : Alignment.bottomRight,
      padding: const EdgeInsets.only(left: 20, bottom: 18),
      child: IconButton(
        icon: const Icon(Icons.info_outline),
        onPressed: () => showInfoDialog(context),
      ),
    );
  }
}

void showInfoDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => const InfoDialog(),
  );
}

class InfoDialog extends StatelessWidget {
  const InfoDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: kRootColors[700],
      shape: kRoundedRectangleBorder,
      content: Container(
        alignment: Alignment.topRight,
        padding: const EdgeInsets.all(8.0),
        width: PAN_WIDTH,
        height: PAN_HEIGHT,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
    );
  }
}

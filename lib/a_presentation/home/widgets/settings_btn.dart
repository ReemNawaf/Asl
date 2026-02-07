import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/widgets/app_btn.dart';
import 'package:asl/a_presentation/home/widgets/share_settings_section.dart';
import 'package:asl/a_presentation/home/widgets/tree_settings_section.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalTreeBloc, LocalTreeState>(
      builder: (_, state) {
        if (state.selectedTreeId != null) {
          return AppButton(
            onPressed: () => showSettingsPanel(context),
            label: getTr(context, 'settings')!,
            fillColor: const Color(0xFFFFEFE2),
            textColor: const Color(0xFF303030),
            icon: SvgPicture.asset('assets/icons/settings.svg'),
            hasIcon: true,
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}

Future<dynamic> showSettingsPanel(BuildContext contextPage) {
  return showDialog(
    context: contextPage,
    useRootNavigator: false,
    builder: (BuildContext dialogContext) {
      return Scaffold(
        backgroundColor: Colors.transparent,
        body: AlertDialog(
          backgroundColor: kWhitesColor[600],
          shape: kRoundedRectangleBorder,
          scrollable: true,
          content: Container(
            alignment: Alignment.topRight,
            padding: const EdgeInsets.all(16.0),
            width: PAN_SM_WIDTH,
            height: PAN_SM_HEIGHT,
            child: Column(
              children: [
                TreeSettingsSection(
                  dialogContext: dialogContext,
                  contextPage: contextPage,
                ),
                kVSpacer10,
                // kAppDivider,
                // kVSpacer10,
                // LanguageSettingsSection(
                //   dialogContext: dialogContext,
                //   contextPage: contextPage,
                // ),
                kVSpacer10,
                ShareSettingsSection(
                    dialogContext: dialogContext, contextPage: contextPage),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: AppButton(
                        onPressed: () => Navigator.of(dialogContext).pop(),
                        label: getTr(contextPage, 'done')!,
                        fillColor: kRootColors[600]!,
                        textColor: kBlacksColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

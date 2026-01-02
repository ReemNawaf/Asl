import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/a_shared/ui_helpers.dart';
import 'package:asl/a_presentation/core/widgets/sm_app_btn.dart';
import 'package:asl/a_presentation/home/widgets/share_options.dart';
import 'package:asl/b_application/tree_bloc/tree_settings/tree_settings_bloc.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ShareSettingsSection extends StatelessWidget {
  const ShareSettingsSection(
      {super.key, required this.dialogContext, required this.contextPage});
  final BuildContext dialogContext;
  final BuildContext contextPage;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TreeSettingsBloc, TreeSettingsState>(
      listener: (context, state) {
        if (state.isLinkCopied) {
          appSnackBar(
            dialogContext,
            text: getTr(context, 'link_copied')!,
            type: SnackBarType.success,
          );
        }
      },
      builder: (_, state) {
        final isPublic = state.shareOption == 1;
        print('state.isShareLink ${state.isShareLink}');
        final localTree = context.read<LocalTreeBloc>().state;

        if (!state.isShareLink && localTree.selectedTreeId != null) {
          final treeId = localTree.selectedTreeId!.getOrCrash();
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kAppDivider,
              kVSpacer10,
              Text(getTr(context, 'share_family_tree')!, style: kBodyMedium),
              kVSpacer5,
              Text(
                getTr(context,
                    'share_your_family_tree_with_your_family_members')!,
                style: kCaption1Style.copyWith(color: kBlacksColor[400]),
              ),
              kVSpacer30,
              Text(
                getTr(context, 'share_public')!,
                style: kFootnoteStyle.copyWith(color: kBlacksColor),
              ),
              kVSpacer10,

              Container(
                decoration: BoxDecoration(
                  color: isPublic ? kLeafColors[810] : kRootColors[810],
                  borderRadius: BorderRadius.circular(14.0),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            color:
                                isPublic ? kLeafColors[820] : kRootColors[820],
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            isPublic
                                ? 'assets/icons/glob.svg'
                                : 'assets/icons/lock.svg',
                            color:
                                isPublic ? kLeafColors[830] : kRootColors[830],
                            height: 30,
                            width: 30,
                          ),
                        ),
                        kHSpacer10,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: 80,
                                height: 20,
                                child: ShareOptions(
                                    shareOption: state.shareOption)),
                            kVSpacer5,
                            Text(
                              getTr(context,
                                  SHARE_OPTIONS[state.shareOption]['des']!)!,
                              style: kCaption2Style.copyWith(
                                  color: kBlacksColor[600]),
                            ),
                          ],
                        )
                      ],
                    ),
                    if (isPublic)
                      SmallAppButton(
                        onPressed: () async {
                          final link = buildTreeLink(treeId);

                          await Clipboard.setData(ClipboardData(text: link));

                          if (!context.mounted) return;
                          contextPage
                              .read<TreeSettingsBloc>()
                              .add(const TreeSettingsEvent.sharedLinkCopied());
                        },
                        label: getTr(context, 'copy_share_link')!,
                        fillColor: kLeafColors[820]!,
                        icon: Icon(
                          Icons.link,
                          color: kLeafColors[830],
                        ),
                        hasIcon: true,
                        textColor: kBlacksColor,
                      ),
                  ],
                ),
              ),

              // Text(
              //   'مشاركة مع أشخاص',
              //   style: kFootnoteStyle.copyWith(color: kBlacksColor[200]),
              // ),
            ],
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}

String buildTreeLink(String treeId) {
  // production domain (or swap per env)
  return 'https://asl.reemnawaf.me/trees/$treeId';
}

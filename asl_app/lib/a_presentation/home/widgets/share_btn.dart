import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/a_shared/ui_helpers.dart';
import 'package:asl/a_presentation/core/widgets/app_btn.dart';
import 'package:asl/a_presentation/core/widgets/sm_app_btn.dart';
import 'package:asl/a_presentation/home/widgets/share_options.dart';
import 'package:asl/b_application/share_bloc/share_option/share_option_bloc.dart';
import 'package:asl/b_application/tree_bloc/current_tree/current_tree_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentTreeBloc, CurrentTreeState>(
      builder: (_, state) {
        if (state.currentTree != null) {
          return AppButton(
            onPressed: () => showSharePanel(context),
            label: 'مشاركة',
            fillColor: const Color(0xFFFFEFE2),
            textColor: const Color(0xFF303030),
            icon: const Icon(Icons.ios_share),
            hasIcon: true,
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}

Future<dynamic> showSharePanel(BuildContext contextPage) {
  return showDialog(
    context: contextPage,
    useRootNavigator: false,
    builder: (BuildContext dialogContext) {
      return Scaffold(
        backgroundColor: Colors.transparent,
        body: BlocConsumer<ShareOptionBloc, ShareOptionState>(
          listener: (context, state) {
            if (state.isLinkCopied) {
              appSnackBar(
                dialogContext,
                // TODO: add localization here
                text: 'تم نسخ الرابط',
                type: SnackBarType.success,
              );
            }
          },
          builder: (_, state) {
            if (state.shareOption != null) {
              final isPublic = state.shareOption == 1;
              return AlertDialog(
                backgroundColor: kWhitesColor[600],
                shape: kRoundedRectangleBorder,
                scrollable: true,
                content: Container(
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.all(16.0),
                  width: PAN_SM_WIDTH,
                  height: PAN_SM_HEIGHT,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // TODO: add localization here
                      const Text('مشاركة شجرة العائلة', style: kBodyLarge),
                      kVSpacer10,
                      Text(
                        // TODO: add localization here
                        'شارك شجرة العائلة مع أفراد عائلتك!',
                        style:
                            kFootnoteStyle.copyWith(color: kBlacksColor[400]),
                      ),
                      kVSpacer30,
                      Text(
                        // TODO: add localization here
                        'مشاركة عامة',
                        style: kFootnoteStyle.copyWith(color: kBlacksColor),
                      ),
                      kVSpacer10,

                      Container(
                        decoration: BoxDecoration(
                          color: isPublic ? kLeafColors[810] : kRootColors[810],
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6.0),
                                  decoration: BoxDecoration(
                                    color: isPublic
                                        ? kLeafColors[820]
                                        : kRootColors[820],
                                    shape: BoxShape.circle,
                                  ),
                                  child: SvgPicture.asset(
                                    isPublic
                                        ? 'assets/icons/glob.svg'
                                        : 'assets/icons/lock.svg',
                                    color: isPublic
                                        ? kLeafColors[830]
                                        : kRootColors[830],
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
                                            shareOption: state.shareOption!)),
                                    kVSpacer5,
                                    Text(
                                      SHARE_OPTIONS[state.shareOption!]
                                              ['des'] ??
                                          '',
                                      style: kCaption2Style.copyWith(
                                          color: kBlacksColor[600]),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            if (isPublic)
                              SmallAppButton(
                                onPressed: () => contextPage
                                    .read<ShareOptionBloc>()
                                    .add(const ShareOptionEvent
                                        .sharedLinkCopied()),
                                // TODO: add localization here
                                label: 'نسخ رابط المشاركة',
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

                      kVSpacer30,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: AppButton(
                              onPressed: () =>
                                  Navigator.of(dialogContext).pop(),
                              // TODO: add localization here
                              label: 'تم',
                              fillColor: kRootColors[600]!,
                              textColor: kBlacksColor,
                            ),
                          ),
                        ],
                      ),
                      // Text(
                      // TODO: add localization here
                      //   'مشاركة مع أشخاص',
                      //   style: kFootnoteStyle.copyWith(color: kBlacksColor[200]),
                      // ),
                    ],
                  ),
                ),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      );
    },
  );
}

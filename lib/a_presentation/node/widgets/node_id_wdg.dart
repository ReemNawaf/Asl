import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';

import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/a_shared/ui_helpers.dart';
import 'package:asl/a_presentation/core/widgets/icon_only_btn.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NodeIdWidget extends StatelessWidget {
  final String id;
  final BuildContext contextDialog;
  final Color color;
  final String name;
  const NodeIdWidget({
    super.key,
    required this.id,
    required this.contextDialog,
    required this.color,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kVSpacer30,
        TitleAndCopyableValue(
          title: getTr(context, 'the_full_name_to_family_root')!,
          id: name,
          color: color,
          wrapLongText: true,
          callback: () async {
            await Clipboard.setData(ClipboardData(text: id));
            if (context.mounted) {
              appSnackBar(
                context,
                text: getTr(context, 'node_name_copied')!,
                type: SnackBarType.success,
              );
            }
          },
        ),
        TitleAndCopyableValue(
          title: getTr(context, 'member_id')!,
          id: id,
          color: color,
          hasCopyIcon: true,
          callback: () async {
            await Clipboard.setData(ClipboardData(text: id));
            if (context.mounted) {
              appSnackBar(
                context,
                text: getTr(context, 'node_id_copied')!,
                type: SnackBarType.success,
              );
            }
          },
        ),
        kVSpacer40,
      ],
    );
  }
}

class TitleAndCopyableValue extends StatelessWidget {
  const TitleAndCopyableValue({
    super.key,
    required this.color,
    required this.id,
    required this.title,
    required this.callback,
    this.wrapLongText = false,
    this.hasCopyIcon = false,
  });

  final Color color;
  final String id;
  final String title;
  final Function() callback;

  /// When true (e.g. full name), the chip hugs short text and grows in width/height when needed (capped).
  final bool wrapLongText;
  final bool hasCopyIcon;

  @override
  Widget build(BuildContext context) {
    final textStyle = kFootnoteStyle.copyWith(
      color: kBlacksColor[200],
      fontWeight: FontWeight.bold,
    );

    return Center(
      child: Column(
        children: [
          kVSpacer20,
          Text(
            title,
            style: kCaption2Style.copyWith(
              fontWeight: FontWeight.bold,
              color: kBlacksColor[600],
            ),
          ),
          kVSpacer5,
          Container(
            padding: EdgeInsets.symmetric(
              vertical: wrapLongText ? 8.0 : 2.0,
              horizontal: 16.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: color.withOpacity(0.2),
            ),
            child: hasCopyIcon
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        id,
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: textStyle,
                      ),
                      ...[
                        kHSpacer5,
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: IconOnlyButton(
                            onPressed: callback,
                            icon: Icon(
                              Icons.copy,
                              size: 14.0,
                              color: kBlacksColor[600],
                            ),
                          ),
                        ),
                      ]
                    ],
                  )
                : Text(
                    id,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: textStyle,
                  ),
          ),
        ],
      ),
    );
  }
}

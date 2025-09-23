import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/strings.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/a_shared/ui_helpers.dart';
import 'package:asl/a_presentation/core/widgets/icon_only_btn.dart';
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
          title: 'الاسم الكامل إلى جذر العائلة',
          id: name,
          color: color,
          callback: () async {
            await Clipboard.setData(ClipboardData(text: id));
            if (context.mounted) {
              appSnackBar(
                context,
                text: ARABIC_STRINGS['node_name_copied']!,
                type: SnackBarType.success,
              );
            }
          },
        ),
        TitleAndCopyableValue(
          title: 'معرف العضو',
          id: id,
          color: color,
          callback: () async {
            await Clipboard.setData(ClipboardData(text: id));
            if (context.mounted) {
              appSnackBar(
                context,
                text: ARABIC_STRINGS['node_id_copied']!,
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
  });

  final Color color;
  final String id;
  final String title;
  final Function() callback;

  @override
  Widget build(BuildContext context) {
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
            padding:
                const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: color.withOpacity(0.2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                kVSpacer20,
                Text(
                  id,
                  style: kFootnoteStyle.copyWith(
                      color: kBlacksColor[200], fontWeight: FontWeight.bold),
                ),
                kHSpacer5,
                IconOnlyButton(
                  onPressed: callback,
                  icon: Icon(
                    Icons.copy,
                    size: 14.0,
                    color: kBlacksColor[600],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

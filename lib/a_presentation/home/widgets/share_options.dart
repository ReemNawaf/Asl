import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/tree_bloc/tree_settings/tree_settings_bloc.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShareOptions extends StatelessWidget {
  final bool isPublic;
  final UniqueId treeId;
  const ShareOptions({super.key, required this.isPublic, required this.treeId});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: DropdownButton(
        items: SHARE_OPTIONS
            .map((Map<String, String> item) => DropdownMenuItem<String>(
                  value: item['value'],
                  child: Text(getTr(context, item['text']!)!),
                ))
            .toList(),
        isExpanded: true,
        value: SHARE_OPTIONS[isPublic ? 1 : 0]['value'],
        onChanged: (String? value) {
          context.read<TreeSettingsBloc>().add(
              TreeSettingsEvent.updateShareSettings(
                  treeId: treeId,
                  isPublic: value == SHARE_OPTIONS[0]['value'] ? false : true));
        },
        underline: const SizedBox(),
        icon: const Icon(Icons.expand_more_rounded),
        dropdownColor: kWhitesColor[600],
        style: kBodyMedium,
        elevation: 1,
      ),
    );
  }
}

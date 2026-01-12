import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_settings/tree_settings_bloc.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TreeSettingsSection extends StatelessWidget {
  const TreeSettingsSection({
    super.key,
    required this.dialogContext,
    required this.contextPage,
  });
  final BuildContext dialogContext;
  final BuildContext contextPage;

  @override
  Widget build(BuildContext context) {
    final treeId = context.read<LocalTreeBloc>().state.selectedTreeId;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(getTr(context, 'settings')!, style: kHeadlineSmall),
        kVSpacer15,
        Text(getTr(context, 'display_family_tree')!, style: kBodyLarge),
        kVSpacer5,
        Text(
          getTr(context, 'display_family_tree_description')!,
          style: kCaption1Style.copyWith(color: kBlacksColor[400]),
        ),
        kVSpacer20,
        Row(
          children: [
            Text(
              getTr(context, 'choose_number_of_generation_for_tree')!,
              style: kBodyMedium.copyWith(color: kBlacksColor[200]),
            ),
            const Spacer(),
            SizedBox(
              width: 200,
              height: 30,
              child: BlocBuilder<TreeSettingsBloc, TreeSettingsState>(
                  builder: (context, state) {
                return DropdownButton(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 0.0),
                  items: NUM_GEN_OPTIONS
                      .map((Map<String, dynamic> item) =>
                          DropdownMenuItem<String>(
                            value: item['value'],
                            child: Text(
                              getTr(context, item['value'])!,
                              style: kFootnoteStyle.copyWith(
                                  color: kBlacksColor[200]),
                            ),
                          ))
                      .toList(),
                  isExpanded: true,
                  value: NUM_GEN_OPTIONS[state.numberOfGenerations]['value']
                      as String,
                  onChanged: (String? value) {
                    final index = NUM_GEN_OPTIONS
                        .indexWhere((item) => value == item['value']);

                    context.read<TreeSettingsBloc>().add(
                          TreeSettingsEvent.numberOfGenerationsChanged(
                              treeId: treeId!, option: index),
                        );
                  },
                  underline: const SizedBox(),
                  icon: const Icon(Icons.expand_more_rounded),
                  dropdownColor: kWhitesColor[600],
                  style: kBodyMedium,
                  elevation: 1,
                );
              }),
            ),
          ],
        ),
        kVSpacer10,
        Row(
          children: [
            Text(
              getTr(context, 'show_unknown_description')!,
              style: kBodyMedium.copyWith(color: kBlacksColor[200]),
            ),
            const Spacer(),
            BlocBuilder<TreeSettingsBloc, TreeSettingsState>(
              builder: (context, state) {
                return Switch(
                  value: !state.showUnknown,
                  onChanged: (value) => context.read<TreeSettingsBloc>().add(
                        TreeSettingsEvent.showUnknownChanged(
                            treeId: treeId!, isShow: value),
                      ),
                  activeColor: kLeafColors[300],
                  inactiveThumbColor: kBlacksColor[400],
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}

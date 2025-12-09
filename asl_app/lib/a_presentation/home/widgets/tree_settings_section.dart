import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/share_bloc/share_option/share_option_bloc.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(getTr(context, 'settings')!, style: kHeadlineMedium),
        kVSpacer15,
        Text(getTr(context, 'display_family_tree')!, style: kBodyMedium),
        kVSpacer5,
        Text(
          getTr(context, 'display_family_tree_description')!,
          style: kCaption1Style.copyWith(color: kBlacksColor[400]),
        ),
        Row(
          children: [
            Text(getTr(context, 'choose_number_of_generation_for_tree')!),
            BlocBuilder<TreeSettingsBloc, TreeSettingsState>(
                builder: (context, state) {
              final generationOption =
                  NUM_GEN_OPTIONS[state.numberOfGenerations];
              return DropdownButton(
                items: NUM_GEN_OPTIONS
                    .map(
                        (Map<String, dynamic> item) => DropdownMenuItem<String>(
                              value: item['value'],
                              child: Text(getTr(context, item['value'])!),
                            ))
                    .toList(),
                isExpanded: true,
                value: generationOption['value'] as String,
                onChanged: (String? value) {
                  final option = NUM_GEN_OPTIONS
                      .indexWhere((item) => value == item['value']);
                  context.read<TreeSettingsBloc>().add(
                        TreeSettingsEvent.numberOfGenerationsChanged(option),
                      );
                },
                underline: const SizedBox(),
                icon: const Icon(Icons.expand_more_rounded),
                dropdownColor: kWhitesColor[600],
                style: kBodyMedium,
                elevation: 0,
              );
            }),
          ],
        ),
        GestureDetector(
            onTap: () {
              context.read<TreeSettingsBloc>().add(
                  TreeSettingsEvent.showUnknownChanged(
                      !context.read<TreeSettingsBloc>().state.showUnknown));
            },
            child: Container(height: 50, width: 50, color: Colors.yellow)),
        kVSpacer10,
      ],
    );
  }
}

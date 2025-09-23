import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/share_bloc/share_option/share_option_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShareOptions extends StatelessWidget {
  final int shareOption;
  const ShareOptions({super.key, required this.shareOption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: DropdownButton(
        items: SHARE_OPTIONS
            .map((Map<String, String> item) => DropdownMenuItem<String>(
                  value: item['value'],
                  child: Text(item['text'] ?? ''),
                ))
            .toList(),
        isExpanded: true,
        value: SHARE_OPTIONS[shareOption]['value'],
        onChanged: (String? value) {
          context.read<ShareOptionBloc>().add(ShareOptionEvent.updated(
              value == ShareOption.restricted.name ? 0 : 1));
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

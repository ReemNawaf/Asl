import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:flutter/material.dart';

class TreeList extends StatelessWidget {
  const TreeList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: const ['اسم الشجرة', 'اسم الشجرة', 'اسم الشجرة']
          .map((String value) => DropdownMenuItem<String>(
                value: value,
                child: Text(value, style: kBodyMedium),
              ))
          .toList(),
      onChanged: (_) {},
      underline: const SizedBox(),
      icon: const Icon(Icons.expand_more_rounded),
      dropdownColor: kRootColors[700],
      style: kBodyMedium,
      // value: null,
      elevation: 1,
    );
  }
}

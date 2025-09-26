import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';

class AliveWidget extends StatelessWidget {
  const AliveWidget({
    super.key,
    required this.color,
    required this.isAlive,
    required this.aliveOrDead,
  });

  final MaterialColor color;
  final bool isAlive;
  final Function({required bool isAliveSelected}) aliveOrDead;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(getTr(context, 'status')!, style: kFootnoteStyle),
        kVSpacer5,
        Row(
          children: [
            AliveButton(
              onTap: () => aliveOrDead(isAliveSelected: true),
              color: color,
              text: getTr(context, 'alive')!,
              selected: isAlive,
            ),
            const SizedBox(width: 16.0),
            AliveButton(
              onTap: () => aliveOrDead(isAliveSelected: false),
              color: color,
              text: getTr(context, 'dead')!,
              selected: isAlive,
            ),
          ],
        ),
      ],
    );
  }
}

class AliveButton extends StatelessWidget {
  const AliveButton({
    super.key,
    required this.color,
    required this.text,
    required this.selected,
    required this.onTap,
  });

  final MaterialColor color;
  final String text;
  final bool selected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: selected ? color[300] : color[600],
          borderRadius: BorderRadius.circular(8.0),
        ),
        height: 33,
        width: 94,
        child: Text(text),
      ),
    );
  }
}

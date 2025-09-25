import 'package:flutter/material.dart';

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

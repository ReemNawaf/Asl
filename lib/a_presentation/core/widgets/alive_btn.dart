import 'package:flutter/material.dart';

class AliveBtn extends StatefulWidget {
  const AliveBtn({
    super.key,
    required this.color,
    required this.size,
  });

  final MaterialColor color;
  final Size size;

  @override
  State<AliveBtn> createState() => _AliveBtnState();
}

class _AliveBtnState extends State<AliveBtn> {
  var isAlive = true;

  @override
  Widget build(BuildContext context) {
    void aliveOrDead({required bool isAliveSelected}) {
      setState(() {
        if (isAliveSelected == true) {
          isAlive = true;
        } else {
          isAlive = false;
        }
      });
    }

    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        children: [
          AliveButton(
              onTap: () => aliveOrDead(isAliveSelected: true),
              color: widget.color,
              size: widget.size,
              text: 'عائش',
              selected: isAlive),
          const SizedBox(width: 16.0),
          AliveButton(
            onTap: () => aliveOrDead(isAliveSelected: false),
            color: widget.color,
            size: widget.size,
            text: 'متوفي',
            selected: !isAlive,
          ),
        ],
      ),
    );
  }
}

class AliveButton extends StatelessWidget {
  const AliveButton({
    super.key,
    required this.color,
    required this.size,
    required this.text,
    required this.selected,
    required this.onTap,
  });

  final MaterialColor color;
  final Size size;
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
        height: 36,
        width: 94,
        child: Text(text),
      ),
    );
  }
}

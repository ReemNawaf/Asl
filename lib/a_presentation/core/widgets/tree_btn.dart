import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TreeButton extends StatelessWidget {
  const TreeButton({super.key, required this.color, required this.size});
  final Color color;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      width: size.width * 0.2,
      height: size.height * 0.1,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            'icons/tree.svg',
            height: 70,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'استعراض شجرة العائلة',
                style: kBodyLarge,
              ),
              Text(
                'استعراضه كجذر لشجرة العائلة',
                style: kFootnoteStyle.copyWith(fontSize: 14.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

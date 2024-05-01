import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/fixed.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/widgets/node_panel/main_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppNode extends StatelessWidget {
  const AppNode({
    super.key,
    required this.type,
    required this.name,
    required this.relation,
    required this.yearOfBirth,
    required this.yearOfDeath,
    required this.isAlie,
    required this.color,
    required this.gender,
    required this.hasImage,
    this.image,
  });

  final NodeType type;
  final String name;
  final String relation;
  final String yearOfBirth;
  final String yearOfDeath;
  final bool isAlie;
  final bool hasImage;
  final MaterialColor color;
  final String? image;
  final Gender gender;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final kTextHeight = size.height * 0.033;

    final imageWidget = ClipRRect(
      borderRadius: BorderRadius.circular(6.0),
      child: image != null
          ? Image.asset(
              image ?? 'assets/images/placeholder.png',
              fit: BoxFit.cover,
            )
          : SvgPicture.asset('assets/avatars/${gender.name}.svg'),
    );

    return GestureDetector(
      onTap: () => showPanel(context, size, imageWidget, color, hasImage),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            alignment: Alignment.center,
            width: size.width * 0.22,
            height: size.height * 0.11,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              color: color[600]!,
            ),
          ),
          if (hasImage)
            Container(
                width: size.width * 0.11,
                height: size.width * 0.11,
                margin: EdgeInsets.only(bottom: size.height * 0.07),
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: kBlacksColor[100]!,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(6.0),
                  color: color[500]!,
                ),
                child: imageWidget),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Container(
                    width: size.width * 0.2,
                    height: kTextHeight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: color[300]!,
                    ),
                    child: Text(
                      name,
                      style: kCalloutStyle,
                      textAlign: TextAlign.center,
                    )),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Container(
                        width: size.width * 0.055,
                        height: kTextHeight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: color[400]!,
                        ),
                        child: Text(
                          isAlie ? 'العمى كله' : yearOfDeath,
                          style: kCalloutStyle,
                          textAlign: TextAlign.center,
                        )),
                    const SizedBox(width: 8),
                    Container(
                      width: size.width * 0.055,
                      height: kTextHeight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: color[400]!,
                      ),
                      child: Text(
                        yearOfBirth,
                        style: kCalloutStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: size.width * 0.075,
                      height: kTextHeight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: color[400]!,
                      ),
                      child: Text(
                        relation,
                        style: kCalloutStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

void showPanel(BuildContext context, Size size, ClipRRect imageWidget,
        MaterialColor color, bool hasImage) =>
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return MainPanel(
          color: color,
          size: size,
          hasImage: hasImage,
          imageWidget: imageWidget,
        );
      },
    );

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoSloganWidget extends StatelessWidget {
  const LogoSloganWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        logo(),
        SvgPicture.asset(
          height: 100,
          'assets/images/slogan.svg',
        ),
      ],
    );
  }
}

Widget logo() => SizedBox(
      height: 180,
      width: 220,
      child: Stack(
        children: [
          Positioned(
            top: 90,
            right: 18,
            child: SvgPicture.asset(
              height: 100,
              'assets/images/typography.svg',
            ),
          ),
          Positioned(
            bottom: 10,
            right: 36,
            child: Image.asset(
              height: 180,
              'assets/images/asl_tree.png',
            ),
          )
        ],
      ),
    );

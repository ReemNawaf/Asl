import 'package:flutter/material.dart';

//  SYSTEM COLORS
//  ------------------------

//  Blacks
const int kBlackColor = 0xFF0A0E14;
const MaterialColor kBlacksColor = MaterialColor(
  kBlackColor,
  <int, Color>{
    100: Color(0xFF000000), //  True black for text
    200: Color(0xFF3F3F40), //  For icons
    300: Color(0xFF262626), //  1
    400: Color(0xFF383C41), //  2
    600: Color(0xFFBEBEBE), //  for learning ressouce chip
    700: Color(0xFFDDDDDD), //  for form field active color
    800: Color(0xFFDDDDDD), //  for form field inactive color
  },
);

//  Whites
const int kWhiteColor = 0xFFFFFFFF;
const MaterialColor kWhitesColor = MaterialColor(
  kWhiteColor,
  <int, Color>{
    100: Color(0xFFFFFFFF), //  layer 1 True white for bg
    200: Color(0xFFF5F5F5), //  layer 2
    300: Color(0xFFDEDEDE), //  layer 3
    400: Color(0xFFEEEEEE), //  3
    500: Color(0xFFFFF0EE), //  red
    600: Color(0xFFFFE3E1), //  red
  },
);

// Red
const int kRedColor = 0xFFFF5450;
const MaterialColor kRedsColor = MaterialColor(
  kRedColor,
  <int, Color>{
    300: Color(0xFFFF0600),
    400: Color(0xFFFF5450),
    500: Color(0xFFFF6955),
    600: Color(0xFFFF8D8D),
    700: Color(0xFFFFC6C6),
    800: Color(0xFFFFE3E1),
    900: Color(0xFFFFDDDD),
  },
);

//  Orange
const int kOrangeColor = 0xFFFF8564;
const MaterialColor kOrangesColor = MaterialColor(
  kOrangeColor,
  <int, Color>{
    400: Color(0xFFFF7E00),
    500: Color(0xFFFF985F),
    600: Color(0xFFFFC2B1),
    700: Color(0xFFBFFFEF),
  },
);

// Yellow
const int kYellowColor = 0xFFFFAA55;
const MaterialColor kYellowsColor = MaterialColor(
  kYellowColor,
  <int, Color>{
    300: Color(0xFFFF403B),
    400: Color(0xFFFFAA55),
    500: Color(0xFFFFCE51),
    600: Color(0xFFFFDDBB),
    700: Color(0xFFFFECBA),
  },
);

// Green
const int kGreenColor = 0xFF06D6A0;
const MaterialColor kGreensColor = MaterialColor(
  kGreenColor,
  <int, Color>{
    300: Color(0xFF00C992),
    400: Color(0xFF01C791),
    500: Color(0xFF06D6A0), // kGreenColor
    600: Color(0xFF73FFDB),
    700: Color(0xFFBFFFEF),
  },
);

// ------------------------
// LABel COLORS
// ------------------------
const kPrimaryLabelColor = Color(0xFF2A2536);
const kSecondaryLabelColor = Color(0xFF3C3F53);
const kTertiaryLabelColor = Color(0xFF6A6D81);
const kQuarternaryLabelColor = Color(0xFFD4D2D8);

// ------------------------
// UI COLORS
// ------------------------
const kWarningUIColor = Color(0xFFFFDA57);
const kErrorUIColor = Color(0xFFFF7A92);
const kShadowColor = Color.fromRGBO(72, 76, 82, 0.16);
const kIconColor = Color(0xFF6A6D81);

final kAppGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    kWhitesColor,
    kRedsColor[900]!,
  ],
);

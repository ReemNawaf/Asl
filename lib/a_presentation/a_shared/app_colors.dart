import 'package:flutter/material.dart';

//  SYSTEM COLORS
//  ------------------------

//  Blacks
const int kBlackColor = 0xFF000000;
const MaterialColor kBlacksColor = MaterialColor(
  kBlackColor,
  <int, Color>{
    100: Color(0xFF000000), //  True black for text
    200: Color(0xFF303030), //  For icons
    300: Color(0xFF262626), //  1
    400: Color(0xFF383C41), //  2
    600: Color(0xFF696969), //  Unselected words
    700: Color(0xFFBFBFBF), //  for form field active color
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
    500: Color(0xFFFFF5EE), //  red
    600: Color(0xFFFFFAF5), //  red
    700: Color(0xFFFFFDFB), //  red
  },
);

// Root
const int kRootColor = 0xFFF5B980;
const MaterialColor kRootColors = MaterialColor(
  kRootColor,
  <int, Color>{
    200: Color(0xFF936233),
    300: Color(0xFFF5B980),
    400: Color(0xFFFFD0A3),
    500: Color(0xFFFFCA98),
    600: Color(0xFFFFE4CA),
    700: Color(0xFFFFEFE2),
    810: Color(0xFFFFEFE2),
    820: Color(0xFFFFE4CA),
    830: Color(0xFFF5B980),
  },
);

// Stem
const int kStemColor = 0xFFFFDD64;
const MaterialColor kStemColors = MaterialColor(
  kStemColor,
  <int, Color>{
    200: Color(0xFFD78C1D),
    300: Color(0xFFFFDD64),
    400: Color(0xFFFFE380),
    500: Color(0xFFFFE299),
    600: Color(0xFFFFF0BA),
    700: Color(0xFFFFFAF5),
  },
);

// Leaf
const int kLeafColor = 0xFFC7E26B;
const MaterialColor kLeafColors = MaterialColor(
  kLeafColor,
  <int, Color>{
    200: Color(0xFF6D8323),
    300: Color(0xFFC7E26B), //
    400: Color(0xFFE0F695),
    500: Color(0xFFE0F695),
    600: Color(0xFFF8FFC1),
    700: Color(0xFFEEF3CC),
    810: Color(0xFFEEF3CC), // share button
    820: Color(0xFFD9E2A1), // share button
    830: Color(0xFFABBC3F), // share button
  },
);

// Out
const int kOutColor = 0xFFABABAB;
const MaterialColor kOutColors = MaterialColor(
  kOutColor,
  <int, Color>{
    200: Color(0xFF808080),
    300: Color(0xFFABABAB), // 0x
    400: Color(0xFFC7C7C7),
    500: Color(0xFFEEEEEE),
    600: Color(0xFFE9E9E9), //
    700: Color(0xFFE0E0E0),
    810: Color(0xFFE0E0E0), // share
    830: Color(0xFF808080), // share
    820: Color(0xFFC7C7C7), // share
  },
);

// Mirror
const int kMirrorColor = 0xFF74C7F4;
const MaterialColor kMirrorColors = MaterialColor(
  kMirrorColor,
  <int, Color>{
    200: Color(0xFF09A1F4), // L5 buttons
    300: Color(0xFF74C7F4), // L4 (under name)
    400: Color(0xFF8ED0F4), // L3 (three rectangles)
    500: Color(0xFFA5D8F4), // L2 (behind avatar)
    600: Color(0xFFC9E2F4), // L1 (node base)
    700: Color(0xFFDEECF4), // L0 (panel base)
  },
);

// Groups Colors (300/400/600 are the design anchors; 200/500/700 are derived.)

// Lavender
const int kLavenderColor = 0xFFBDA2E6;
const MaterialColor kLavenderColors = MaterialColor(
  kLavenderColor,
  <int, Color>{
    200: Color(0xFF6B5590),
    300: Color(0xFFBDA2E6),
    400: Color(0xFFDBC5F6),
    500: Color(0xFFE6D8FB),
    600: Color(0xFFF1EAFF),
    700: Color(0xFFF9F6FF),
  },
);

// Teal
const int kTealColor = 0xFF6DC6B8;
const MaterialColor kTealColors = MaterialColor(
  kTealColor,
  <int, Color>{
    200: Color(0xFF2E8578),
    300: Color(0xFF6DC6B8),
    400: Color(0xFF87CBBF),
    500: Color(0xFFABD6D4),
    600: Color(0xFFCEEEE8),
    700: Color(0xFFF0FBF9),
  },
);

// Orange
const int kOrangeColor = 0xFFF9A172;
const MaterialColor kOrangeColors = MaterialColor(
  kOrangeColor,
  <int, Color>{
    200: Color(0xFFC96E40),
    300: Color(0xFFF9A172),
    400: Color(0xFFFFC5A8),
    500: Color(0xFFFCD1B7),
    600: Color(0xFFFFDDC6),
    700: Color(0xFFFFF6F0),
  },
);

// Coral
const int kCoralColor = 0xFFFA9594;
const MaterialColor kCoralColors = MaterialColor(
  kCoralColor,
  <int, Color>{
    200: Color(0xFFB74D4C),
    300: Color(0xFFFA9594),
    400: Color(0xFFFFBBBC),
    500: Color(0xFFFFC9CA),
    600: Color(0xFFFFD7D8),
    700: Color(0xFFFFF2F2),
  },
);

// RoyaBlue
const int kRoyaBluelColor = 0xFF77A8FD;
const MaterialColor kRoyaBluelColors = MaterialColor(
  kRoyaBluelColor,
  <int, Color>{
    200: Color(0xFF3D62C4),
    300: Color(0xFF77A8FD),
    400: Color(0xFF9FC2FF),
    500: Color(0xFFB7D2FF),
    600: Color(0xFFCFE1FF),
    700: Color(0xFFE8F4FF),
  },
);

// Olive (300 was given as "9AF76" — interpreted as A9AF76)
const int kOliveColor = 0xFFA9AF76;
const MaterialColor kOliveColors = MaterialColor(
  kOliveColor,
  <int, Color>{
    200: Color(0xFF5F6645),
    300: Color(0xFFA9AF76),
    400: Color(0xFFC7D7AD),
    500: Color(0xFFCFDBBA),
    600: Color(0xFFE9F2DA),
    700: Color(0xFFEEF4E8),
  },
);

// Color(0xFFC7C7C7),
// Color(0xFFE0E0E0),
// Color(0xFFDFDFDF),

const int kRedColor = 0xFFFF7A92;
const MaterialColor kRedColors = MaterialColor(
  kRedColor,
  <int, Color>{
    300: Color(0xFFFF7A92),
    400: Color(0xFFFF98AA),
    500: Color(0xFFFFC5D0),
    600: Color(0xFFFFD9E0),
    700: Color(0xFFFFE5EA),
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

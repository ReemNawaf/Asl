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
    500: Color(0xFFFFF0EE), //  red
    600: Color(0xFFFFFAF5), //  red
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
    300: Color(0xFFABABAB),
    400: Color(0xFFC7C7C7),
    500: Color(0xFFE0E0E0),
    810: Color(0xFFE0E0E0), // share
    830: Color(0xFF808080), // share
    820: Color(0xFFC7C7C7), // share
  },
);

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

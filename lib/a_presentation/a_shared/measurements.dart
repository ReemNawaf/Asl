import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

const screenStandardHight = 650.0;
const screenStandardWidth = 500.0;

double screenWidth(Size screenSize) {
  return isPhone(screenSize) ? screenSize.width : 0.5625 * screenStandardHight;
}

double screenHeight(Size screenSize) {
  return isPhone(screenSize) ? screenSize.height : screenStandardHight;
}

bool isPhone(Size screenSize) {
  return screenSize.width <= screenStandardWidth;
}

// double screenWidth(Size screenSize) {
//   return isPhone(screenSize) ? screenSize.width : 0.5625 * screenStandardHight;
// }

// const screenStandardHight = 650.0;
// double screenHeight(Size screenSize) {
//   return isPhone(screenSize) ? screenSize.height : screenStandardHight;
// }

bool isPhonePlatform() {
  return (defaultTargetPlatform == TargetPlatform.iOS) ||
      (defaultTargetPlatform == TargetPlatform.android);
}

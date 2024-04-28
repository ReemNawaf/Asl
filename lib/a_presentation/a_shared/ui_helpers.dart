import 'package:flutter/material.dart';

/// Contains useful functions to reduce boilerplate code

// Vertical spacing constants. Adjust to your liking.
const double iVerticalSpaceSmall = 10.0;
const double iVerticalSpaceMedium = 20.0;
const double iVerticalSpaceLarge = 60.0;

// Vertical spacing constants. Adjust to your liking.
const double iHorizontalSpaceSmall = 10.0;
const double iHorizontalSpaceMedium = 20.0;
const double iHorizontalSpaceLarge = 60.0;

/// Returns a vertical space with height set to [_VerticalSpaceSmall]
Widget verticalSpaceSmall() {
  return verticalSpace(iVerticalSpaceSmall);
}

/// Returns a vertical space with height set to [_VerticalSpaceMedium]
Widget verticalSpaceMedium() {
  return verticalSpace(iVerticalSpaceMedium);
}

/// Returns a vertical space with height set to [_VerticalSpaceLarge]
Widget verticalSpaceLarge() {
  return verticalSpace(iVerticalSpaceLarge);
}

/// Returns a vertical space equal to the [height] supplied
Widget verticalSpace(double height) {
  return Container(height: height);
}

/// Returns a vertical space with height set to [_HorizontalSpaceSmall]
Widget horizontalSpaceSmall() {
  return horizontalSpace(iHorizontalSpaceSmall);
}

/// Returns a vertical space with height set to [_HorizontalSpaceMedium]
Widget horizontalSpaceMedium() {
  return horizontalSpace(iHorizontalSpaceMedium);
}

/// Returns a vertical space with height set to [HorizontalSpaceLarge]
Widget horizontalSpaceLarge() {
  return horizontalSpace(iHorizontalSpaceLarge);
}

/// Returns a vertical space equal to the [width] supplied
Widget horizontalSpace(double width) {
  return Container(width: width);
}

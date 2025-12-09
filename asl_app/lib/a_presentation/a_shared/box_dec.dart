import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';

final kAppBorderRadius = BorderRadius.circular(10);
final kSearchBorderRadius = BorderRadius.circular(20);
const kAppCircularRadius = 10.0;
const kAppBorderWidth = 1.5;
const kAppFoucusborderWidth = 2.0;
const searchBarRadius = 12.0;
const kSearchBarBorderWidth = 0.5;
const kAppRadius = Radius.circular(10.0);
final kValidationTextStyle =
    kCaption1Style.copyWith(color: kErrorUIColor, height: 1.0);
BoxDecoration kSearchResultBoxDec =
    BoxDecoration(color: kBlacksColor[600], borderRadius: kSearchBorderRadius);

InputDecoration kLoginInputDecoration({required icon, required hintText}) =>
    InputDecoration(
      hintText: hintText,
      isDense: true,
      filled: true,
      icon: icon,
      fillColor: kWhitesColor,
      hintStyle: TextStyle(
        fontSize: 15.0,
        color: kBlacksColor[600]!,
      ),
      iconColor: kRootColors,
      isCollapsed: true,
      contentPadding:
          const EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: kRootColors, width: 0.75),
        borderRadius: BorderRadius.all(kAppRadius),
      ),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(kAppRadius),
      ),
    );

InputDecoration kAppFormsRequiredInputDecor(
        {String? label, MaterialColor? color}) =>
    InputDecoration(
      labelText: label ?? 'enter ...',
      labelStyle: kFootnoteStyle.copyWith(
        color: color![500] ?? kTertiaryLabelColor,
      ),
      errorStyle: kCaption1Style.copyWith(color: kErrorUIColor),

      errorMaxLines: 2,

      contentPadding:
          const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
      ),
      // Borders
      // NORMAL
      // 1. INACTIVE
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: color[600] ?? kQuarternaryLabelColor,
            width: kAppBorderWidth),
        borderRadius: const BorderRadius.all(Radius.circular(32.0)),
      ),
      // 2. ACTIVE
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: color[500] ?? kTertiaryLabelColor,
            width: kAppFoucusborderWidth),
        borderRadius: const BorderRadius.all(Radius.circular(32.0)),
      ),

      // ERROR
      // 1. INACTIVE
      errorBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: kRootColors[600]!, width: kAppBorderWidth),
        borderRadius: const BorderRadius.all(Radius.circular(32.0)),
      ),

      // 2. ACTIVE
      focusedErrorBorder: const OutlineInputBorder(
        borderSide:
            BorderSide(color: kErrorUIColor, width: kAppFoucusborderWidth),
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
      ),
    );

InputDecoration kAppFormsInputDecor({
  String hint = '',
  bool isDense = false,
  Icon? icon,
  Color? color,
}) =>
    InputDecoration(
      hintText: hint,
      hintStyle: kFootnoteStyle.copyWith(color: kBlacksColor),
      errorStyle: kValidationTextStyle,
      icon: icon,
      filled: true,
      fillColor: color ?? Colors.transparent,
      errorMaxLines: 2,
      isDense: isDense,

      contentPadding:
          const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(kAppRadius),
      ),
      // Borders
      // NORMAL
      // 1. INACTIVE
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: kBlacksColor, width: kAppBorderWidth),
        borderRadius: BorderRadius.all(kAppRadius),
      ),
      // 2. ACTIVE
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: kBlacksColor.shade200, width: kAppFoucusborderWidth),
        borderRadius: const BorderRadius.all(kAppRadius),
      ),

      // ERROR
      // 1. INACTIVE
      errorBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: kRootColors[600]!, width: kAppBorderWidth),
        borderRadius: const BorderRadius.all(kAppRadius),
      ),

      // 2. ACTIVE
      focusedErrorBorder: const OutlineInputBorder(
        borderSide:
            BorderSide(color: kErrorUIColor, width: kAppFoucusborderWidth),
        borderRadius: BorderRadius.all(kAppRadius),
      ),
    );

InputDecoration kSearchBarInputDecor(BuildContext context) => InputDecoration(
      hintText: getTr(context, 'search_for_member')!,
      hintStyle: kBodyMedium.copyWith(color: const Color(0xFF696969)),
      errorStyle: kCaption2Style.copyWith(color: kErrorUIColor),
      filled: true,
      fillColor: kWhitesColor,
      errorMaxLines: 2,

      isDense: true,
      suffixIcon: const Icon(Icons.search, color: Color(0xFF696969)),

      contentPadding:
          const EdgeInsets.symmetric(vertical: 6.0, horizontal: 20.0),

      // Borders
      // NORMAL
      // 1. INACTIVE
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFFFEFE2), width: 0),
        borderRadius: BorderRadius.all(Radius.circular(searchBarRadius)),
      ),
      // 2. ACTIVE
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: kTertiaryLabelColor),
        borderRadius: BorderRadius.all(Radius.circular(searchBarRadius)),
      ),

      // ERROR
      // 1. INACTIVE
      errorBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: kRootColors[600]!, width: kSearchBarBorderWidth),
        borderRadius: const BorderRadius.all(Radius.circular(searchBarRadius)),
      ),

      // 2. ACTIVE
      focusedErrorBorder: const OutlineInputBorder(
        borderSide:
            BorderSide(color: kErrorUIColor, width: kSearchBarBorderWidth),
        borderRadius: BorderRadius.all(Radius.circular(searchBarRadius)),
      ),
    );

BoxDecoration kAppFormsDecor = BoxDecoration(
  border: Border.all(color: kBlacksColor.shade200, width: 1.5),
  borderRadius: const BorderRadius.all(kAppRadius),
);

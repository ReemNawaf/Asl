import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';

const int MIM_HEIGHT = 640;
const int MIM_WIDTH = 1050;
const double PAN_HEIGHT = 500;
const double PAN_SM_HEIGHT = 580;
const double PAN_WIDTH = 700;
const double PAN_SM_WIDTH = 500;
const int NODE_BRIEF_MAX_LENGTH = 5000;

const MIN_ZOOM = 0.05;
const MAX_ZOOM = 2.0;
const ZOOM_DEF = 0.5;

const double transactionCardHeight = 75.0;

const double SIDE_BAR_WIDTH = 0.19;
const double CENTER_WIDTH = 0.81;
const double ARROW_BTN_WIDTH = 20;

// Adding Forms
enum AddingFrom { cameraPage, homePage, other }

enum NodeType { none, root, child, grandchild, partner, partnerMirror }

enum Gender { male, female }

enum FieldType { email, password, text }

enum AuthMode { signin, signup }

enum MarriageStatus { married, divorced, widowhood }

String getMarriageSt(BuildContext ctx, MarriageStatus status, Gender gender) {
  String key = 'male_married';

  if (status == MarriageStatus.divorced) {
    key = getTr(
        ctx, gender == Gender.female ? 'female_divorced' : 'male_divorced')!;
  } else if (status == MarriageStatus.married) {
    key = getTr(
        ctx, gender == Gender.female ? 'female_married' : 'male_married')!;
  } else if (status == MarriageStatus.widowhood) {
    key = getTr(
        ctx, gender == Gender.female ? 'female_widowhood' : 'male_widowhood')!;
  }
  return key;
}

const kVSpacer5 = SizedBox(height: 5.0);
const kVSpacer10 = SizedBox(height: 10.0);
const kVSpacer15 = SizedBox(height: 15.0);
const kVSpacer20 = SizedBox(height: 20.0);
const kVSpacer30 = SizedBox(height: 30.0);
const kVSpacer40 = SizedBox(height: 40.0);
const kVSpacer60 = SizedBox(height: 60.0);

const kHSpacer5 = SizedBox(width: 5.0);
const kHSpacer10 = SizedBox(width: 10.0);
const kHSpacer15 = SizedBox(width: 15.0);
const kHSpacer20 = SizedBox(width: 20.0);
const kHSpacer24 = SizedBox(width: 24.0);
const kHSpacer40 = SizedBox(width: 40.0);
const kHSpacer60 = SizedBox(width: 60.0);

const kAppHPadding = EdgeInsets.symmetric(horizontal: 24.0);

const kCursorHeight = 18.0;
const kTextFieldHeight = 35.0;

final kRoundedRectangleBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(14.0),
    side: const BorderSide(
      color: kBlacksColor,
      width: 1.5,
    ));

final kAppDivider = Divider(
  color: kRootColors[600],
  thickness: 1,
);

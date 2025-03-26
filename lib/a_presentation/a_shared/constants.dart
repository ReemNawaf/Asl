// Transacrion Constants
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:flutter/material.dart';

const int MIM_HEIGHT = 640;
const int MIM_WIDTH = 920;
const double PAN_HEIGHT = 420;
const double PAN_SM_HEIGHT = 280;
const double PAN_WIDTH = 680;
const double PAN_SM_WIDTH = 500;

const double transactionCardHeight = 75.0;

// Adding Forms
enum AddingFrom { cameraPage, homePage, other }

enum NodeType { none, root, child, grandchild, partner }

enum Gender { male, female }

enum FieldType { email, password, text }

enum AuthMode { signin, signup }

enum MarriageStatus { married, divorced, widowhood }

const marriageSt = {
  MarriageStatus.divorced: 'مطلق',
  MarriageStatus.married: 'متزوج',
  MarriageStatus.widowhood: 'أرمل',
};

const kVSpacer5 = SizedBox(height: 5.0);
const kVSpacer10 = SizedBox(height: 10.0);
const kVSpacer20 = SizedBox(height: 20.0);
const kVSpacer30 = SizedBox(height: 30.0);
const kVSpacer40 = SizedBox(height: 40.0);
const kVSpacer60 = SizedBox(height: 60.0);

const kHSpacer10 = SizedBox(width: 10.0);
const kHSpacer20 = SizedBox(width: 20.0);
const kHSpacer24 = SizedBox(width: 24.0);
const kHSpacer40 = SizedBox(width: 40.0);
const kHSpacer60 = SizedBox(width: 60.0);

const kAppHPadding = EdgeInsets.symmetric(horizontal: 24.0);

final kRoundedRectangleBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(14.0),
    side: const BorderSide(
      color: kBlacksColor,
      width: 1.5,
    ));

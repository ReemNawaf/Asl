// import 'package:flutter/material.dart';
// import 'package:asl/a_presentation/a_shared/app_colors.dart';
// import 'package:asl/a_presentation/a_shared/constants.dart';
// import 'package:asl/a_presentation/a_shared/measurements.dart';
// import 'package:asl/a_presentation/a_shared/text_styles.dart';

// void animatedToIndex(
//     {required double index,
//     required ScrollController controller,
//     required int length}) {
//   if (controller.hasClients) {
//     controller.animateTo(
//         (transactionCardHeight * 2) + (transactionCardHeight * index),
//         duration: const Duration(seconds: 1),
//         curve: Curves.fastOutSlowIn);
//   }
// }

// PopupMenuItem buildPopupMenuItem(
//     {required Color color,
//     required BuildContext context,
//     required Size screenSize,
//     required String value,
//     required IconData icon}) {
//   return PopupMenuItem(
//     height: screenHeight(screenSize) * 0.03,
//     value: value,
//     child: Column(
//       children: [
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             Icon(
//               icon,
//               color: color,
//               size: 24.0,
//             ),
//             const SizedBox(width: 4),
//             Text(
//               getTr(context, value)!,
//               style: kBodyMedium,
//             ),
//           ],
//         ),
//         const Divider(),
//       ],
//     ),
//   );
// }

// void showCSVNotSupportedDialog(BuildContext ctx) {
//   showDialog(
//     context: ctx,
//     builder: (context) {
//       return AlertDialog(
//         title: Text(
//           getTr(context, 'not_supported_yet')!,
//           style: kCalloutStyle,
//           textAlign: TextAlign.center,
//         ),
//         content: Text(
//           getTr(context, 'sorry_exporting_csv_not_supported')!,
//           style: kBodyMedium.copyWith(color: kTertiaryLabelColor, height: 1.5),
//           textAlign: TextAlign.center,
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(ctx),
//             child: Text(
//               getTr(context, 'okey')!,
//             ),
//           ),
//         ],
//       );
//     },
//   );
// }

// void showPDFNotSupportedDialog(BuildContext ctx) {
//   showDialog(
//     context: ctx,
//     builder: (context) {
//       return AlertDialog(
//         title: Text(
//           getTr(context, 'not_supported_yet')!,
//           style: kCalloutStyle,
//           textAlign: TextAlign.center,
//         ),
//         content: Text(
//           getTr(context, 'sorry_exporting_pdf_not_supported')!,
//           style: kBodyMedium.copyWith(color: kTertiaryLabelColor, height: 1.5),
//           textAlign: TextAlign.center,
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(ctx),
//             child: Text(
//               getTr(context, 'okey')!,
//             ),
//           ),
//         ],
//       );
//     },
//   );
// }

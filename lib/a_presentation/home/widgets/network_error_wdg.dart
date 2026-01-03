import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';

class NetworkError extends StatelessWidget {
  const NetworkError({
    super.key,
    required this.state,
  });
  final LocalTreeState state;

  @override
  Widget build(BuildContext context) {
    final strings = state.treeFailureOption.fold(
      () => 'unexpected',
      (failure) => failure.map(
        networkError: (_) => 'network_error',
        unexpected: (_) => 'unexpected',
        unableToUpdate: (_) => 'unable_to_update',
        insufficientPermission: (_) => 'insufficient_permission',
      ),
    );
    return Center(
      child: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            color: kRedColors[600], borderRadius: kAppBorderRadius),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.error_outline, color: kRedColors[300], size: 35),
            kHSpacer10,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  getTr(context, '${strings}_short')!,
                  style: kCalloutStyle.copyWith(
                      wordSpacing: 2.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  getTr(context, '${strings}_long')!,
                  style: kBodyMedium.copyWith(wordSpacing: 2.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

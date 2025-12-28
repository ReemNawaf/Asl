import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/routes/app_router.dart';
import 'package:asl/a_presentation/core/info_container.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class TreeNotFoundPage extends StatelessWidget {
  const TreeNotFoundPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhitesColor[600],
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${getTr(context, 'sorry_there_is_no_tree_under_this_link')} 🌴',
            style: kHeadlineSmall.copyWith(fontSize: 24),
          ),
          kVSpacer5,
          Text(
            getTr(context, 'the_link_is_incorrect_or_tree_is_not_available')!,
            style: kBodyLarge.copyWith(wordSpacing: 2.0, height: 1.8),
          ),
          kVSpacer10,
          InfoContainer(
              info: getTr(context, 'ask_tree_editor_to_send_the_right_link')!),
          kVSpacer20,
          GestureDetector(
            onTap: () => context.router.push(const AuthRoute()),
            child: Text(
              getTr(context, 'go_to_home_page')!,
              style: kHeadlineSmall.copyWith(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  color: kRootColors),
            ),
          )
        ],
      )),
    );
  }
}

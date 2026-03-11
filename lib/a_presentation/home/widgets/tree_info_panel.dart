import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
// import 'package:asl/a_presentation/core/widgets/app_btn.dart';
import 'package:asl/b_application/auth_bloc/auth_bloc.dart';
// import 'package:asl/b_application/tree_bloc/tree_form/tree_form_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_settings/tree_settings_bloc.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TreeInfoPanel extends StatelessWidget {
  const TreeInfoPanel({
    super.key,
    required this.size,
    required this.local,
    required this.state,
  });

  final Size size;
  final Locale local;
  final TreeSettingsState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: state.hideSidbar
          ? size.width * (SIDE_BAR_WIDTH + CENTER_WIDTH) - ARROW_BTN_WIDTH
          : size.width * CENTER_WIDTH,
      alignment: local.languageCode == arabic
          ? Alignment.bottomLeft
          : Alignment.bottomRight,
      padding: const EdgeInsets.only(left: 20, bottom: 18),
      child: IconButton(
        icon: const Icon(Icons.info_outline),
        onPressed: () => showInfoDialog(context),
      ),
    );
  }
}

void showInfoDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => const InfoDialog(),
  );
}

class InfoDialog extends StatelessWidget {
  const InfoDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: kRootColors[700],
      shape: kRoundedRectangleBorder,
      content: Container(
        alignment: Alignment.topRight,
        padding: const EdgeInsets.all(8.0),
        width: PAN_WIDTH,
        height: PAN_HEIGHT,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: DefaultTabController(
          length: 2,
          child: BlocBuilder<AuthBloc, AuthState>(
              builder: (authContext, authState) {
            // final isAuth = authState.maybeMap(
            //   authenticated: (_) => true,
            //   orElse: () => false,
            // );
            return const SizedBox();
            // Stack(
            //   alignment: Alignment.bottomLeft,
            //   children: [
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.end,
            //   children: [
            //     Row(
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: [
            //         // const SizedBox(width: 35),
            //         SizedBox(
            //           width: PAN_WIDTH - 16,
            //           height: 50,
            //           child: TabBar(
            //             unselectedLabelColor: kBlacksColor[600],
            //             indicatorColor: kBlacksColor,
            //             indicatorWeight: 2.5,
            //             labelPadding:
            //                 const EdgeInsets.symmetric(horizontal: 100.0),
            //             padding: EdgeInsets.zero,
            //             indicatorPadding:
            //                 const EdgeInsets.symmetric(horizontal: 5.0),
            //             labelColor: kBlacksColor,
            //             labelStyle: kBodyMedium.copyWith(
            //                 fontWeight: FontWeight.w900),
            //             unselectedLabelStyle: kBodyMedium,
            //             dividerColor: Colors.transparent,
            //             indicatorSize: TabBarIndicatorSize.label,
            //             dividerHeight: 0.0,
            //             isScrollable: true,
            //             tabs: [
            //               Tab(text: getTr(context, 'personal_info')),
            //               Tab(text: getTr(context, 'brief_and_notes')!),
            //             ],
            //           ),
            //         ),
            //         // const SizedBox(width: 18),
            //         // Edit Button
            //         // if (isAuth)
            //         //   BlocBuilder<NodeFormBloc, NodeFormState>(
            //         //     builder: (context, state) {
            //         //       return showEditingIcon(state)
            //         //           ? IconOnlyButton(
            //         //               onPressed: () => context
            //         //                   .read<NodeFormBloc>()
            //         //                   .add(NodeFormEvent.edited(
            //         //                       !state.isEditing)),
            //         //               icon:
            //         //                   const Icon(Icons.edit, size: 24.0),
            //         //             )
            //         //           : const SizedBox();
            //         //     },
            //         //   ),
            //       ],
            //     ),
            //     Column(
            //       mainAxisAlignment: MainAxisAlignment.end,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Container(
            //           height: PAN_HEIGHT - 66,
            //           width: PAN_WIDTH,
            //           padding: const EdgeInsets.symmetric(horizontal: 24),
            //           child: TabBarView(
            //             children: [
            //               TreeDocumentingInfo(),
            //               Icon(Icons.car_crash),
            //             ],
            //           ),
            //         ),
            //         // Saving Button
            //       ],
            //     ),
            //   ],
            // ),
            // BlocBuilder<TreeFormBloc, TreeFormState>(
            //   builder: (context, state) {
            //     return Container(
            //       alignment: Alignment.bottomLeft,
            //       width: PAN_WIDTH,
            //       height: 40,
            //       child: isAuth
            //           ? AppButton(
            //               onPressed: () {},
            //               label: getTr(context, 'done')!,
            //               // label: showEditingIcon(state)
            //               //     ? getTr(context, 'done')!
            //               //     : getTr(context, 'save')!,
            //               fillColor: kRootColors,
            //             )
            //           : Container(
            //               alignment: Alignment.bottomLeft,
            //               width: PAN_WIDTH,
            //               height: 40,
            //               child: AppButton(
            //                 onPressed: () => Navigator.pop(context),
            //                 label: getTr(context, 'done')!,
            //                 fillColor: kRootColors,
            //               )),
            //     );
            //   },
            // ),
            // ],
            // );
          }),
        ),
      ),
    );
  }
}

class TreeDocumentingInfo extends StatelessWidget {
  const TreeDocumentingInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24, top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('تمت مراجعة واعتماد شجرة الزيمي من قبل:'),
          kVSpacer10,
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Chip(
                  padding: const EdgeInsets.all(10),
                  label: Text('نواف عوض',
                      style: kBodyMedium.copyWith(color: kLeafColors[200])),
                  backgroundColor: kLeafColors[300]!.withOpacity(0.5),
                  side: BorderSide.none,
                ),
              ),
            ),
          ),
          const Text('ساعد في جمع وكتابة المعلومات:'),
          kVSpacer10,
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Chip(
                  padding: const EdgeInsets.all(10),
                  label: Text('نواف عوض',
                      style: kBodyMedium.copyWith(color: kLeafColors[200])),
                  backgroundColor: kLeafColors[300]!.withOpacity(0.5),
                  side: BorderSide.none,
                ),
              ),
            ),
          ),
          const Text('تمت برمجته بواسطة ريم نواف')
        ],
      ),
    );
  }
}

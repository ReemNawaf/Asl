import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/home/widgets/layer_widget.dart';
import 'package:asl/a_presentation/home/widgets/settings_btn.dart';
import 'package:asl/a_presentation/home/widgets/tree_list.dart';
import 'package:asl/b_application/tree_bloc/tree_settings/tree_settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TreeSettingsBloc, TreeSettingsState>(
      builder: (context, state) {
        return Row(
          children: [
            if (!state.hideSidbar)
              Container(
                color: kWhitesColor[600],
                width: size.width * 0.16,
                height: size.height,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20, horizontal: 14.0),
                  width: 200.0,
                  child: const Column(
                    children: [
                      TreeList(),
                      Spacer(),
                      LayersWidget(),
                      Spacer(),
                      SettingsButton(),
                    ],
                  ),
                ),
              ),
            Container(
              width: 20,
              height: size.height,
              color: kWhitesColor[500],
              child: RawMaterialButton(
                onPressed: () => context.read<TreeSettingsBloc>().add(
                      const TreeSettingsEvent.updateHideSideBar(),
                    ),
                padding: EdgeInsets.only(right: state.hideSidbar ? 0 : 6),
                elevation: 0,
                hoverElevation: 0,
                focusElevation: 0,
                highlightElevation: 0,
                constraints: const BoxConstraints(minWidth: 0, minHeight: 0),
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Icon(
                  state.hideSidbar
                      ? Icons.arrow_forward_ios
                      : Icons.arrow_back_ios,
                  color: kRootColors[400],
                  weight: 20,
                  grade: 25,
                  size: 18,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

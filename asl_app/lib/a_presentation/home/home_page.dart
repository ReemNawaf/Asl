import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/widgets/des_loading_wdg.dart';
import 'package:asl/a_presentation/core/widgets/loading_wdg.dart';
import 'package:asl/a_presentation/home/widgets/layer_widget.dart';
import 'package:asl/a_presentation/home/widgets/settings_btn.dart';
import 'package:asl/a_presentation/home/widgets/tree_list.dart';
import 'package:asl/a_presentation/routes/app_router.dart';
import 'package:asl/a_presentation/tree/interactive_viewer.dart';
import 'package:asl/a_presentation/tree/widgets/add_new_tree.dart';
import 'package:asl/b_application/auth_bloc/auth_bloc.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_settings/tree_settings_bloc.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String routeName = 'HomePage';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final local = Localizations.localeOf(context);

    return Scaffold(
      body: Row(
        children: [
          Container(
            color: kWhitesColor[600],
            width: size.width * 0.18,
            height: size.height,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 14.0),
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
          SizedBox(
            width: size.width * 0.82,
            child: Stack(
              children: [
                SizedBox(
                  width: size.width * 0.82,
                  child: BlocBuilder<LocalTreeBloc, LocalTreeState>(
                    builder: (context, state) {
                      debugPrint('--- Trees in HomePage ${state.trees.length}');
                      debugPrint(
                          '--- Selected Tree in HomePage ${state.selectedTreeId}');
                      debugPrint(
                          '--- Tree Root in HomePage ${state.mainRootId}');
                      if (state.isLoadingTrees) {
                        return const LoadingWidget();
                      } else if (state.isLoadingTree) {
                        return const DescriptiveLoadingWidget(
                            loading: TreeDisplayLoading.LoadTreeNode);
                      } else if (state.trees.isNotEmpty) {
                        if (state.selectedTreeId != null) {
                          return InteractiveView();
                        } else {
                          return const SizedBox();
                        }
                      } else {
                        return Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AddNewTree(size: size),
                            ],
                          ),
                        );
                      }
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 14.0, right: 14.0, top: 14.0),
                  child: TextField(
                    textAlign: TextAlign.right,
                    decoration: kSearchBarInputDecor(context),
                  ),
                ),
                Container(
                  alignment: local.languageCode == arabic
                      ? Alignment.bottomLeft
                      : Alignment.bottomRight,
                  padding: const EdgeInsets.only(left: 20, bottom: 18),
                  child: IconButton(
                    icon: const Icon(Icons.logout_outlined),
                    onPressed: () {
                      context.read<AuthBloc>().add(const AuthEvent.singedOut());
                      context.router.push(const AuthRoute());
                    },
                  ),
                ),
                Container(
                  width: 150,
                  padding: EdgeInsets.only(right: 20, top: size.height - 85),
                  child: BlocBuilder<TreeSettingsBloc, TreeSettingsState>(
                    builder: (context, state) {
                      return Slider(
                        min: MIN_ZOOM,
                        max: MAX_ZOOM,
                        value: state.zoomScale,
                        label: "${state.zoomScale.toStringAsFixed(2)}x",
                        onChanged: (newScale) {
                          context
                              .read<TreeSettingsBloc>()
                              .add(TreeSettingsEvent.zoomChanged(newScale));
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

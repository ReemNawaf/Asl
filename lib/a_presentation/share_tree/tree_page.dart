import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/widgets/des_loading_wdg.dart';
import 'package:asl/a_presentation/home/tree_search_bar.dart';
import 'package:asl/a_presentation/home/widgets/layer_wdg.dart';
import 'package:asl/a_presentation/home/widgets/settings_btn.dart';
import 'package:asl/a_presentation/home/widgets/tree_list.dart';
import 'package:asl/a_presentation/share_tree/tree_not_found_page.dart';
import 'package:asl/a_presentation/splash/small_screen_page.dart';
import 'package:asl/a_presentation/tree/interactive_viewer.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/child_form/child_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/partner_form/partner_form_bloc.dart';
import 'package:asl/b_application/tree_bloc/draw_tree/draw_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_settings/tree_settings_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_settings/zoom_bloc/tree_zoom_bloc.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/injection.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class TreePage extends StatelessWidget {
  final String treeId;

  static const String routeName = 'TreePage';

  const TreePage({
    super.key,
    @PathParam('treeId') required this.treeId,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return MultiBlocProvider(
      providers: [
        BlocProvider<LocalTreeBloc>(
          create: (context) => getIt<LocalTreeBloc>()
            ..add(LocalTreeEvent.loadTree(
                treeId: UniqueId.fromUniqueString(treeId))),
        ),
        BlocProvider<TreeSettingsBloc>(
            create: (context) => getIt<TreeSettingsBloc>()),
        BlocProvider<NodeFormBloc>(create: (cttx) => getIt<NodeFormBloc>()),
        BlocProvider<DrawTreeBloc>(create: (cttx) => getIt<DrawTreeBloc>()),
        BlocProvider<PartnerFormBloc>(
            create: (context) => getIt<PartnerFormBloc>()),
        BlocProvider<ChildFormBloc>(
            create: (context) => getIt<ChildFormBloc>()),
      ],
      child: Scaffold(
        body: BlocListener<LocalTreeBloc, LocalTreeState>(
          listenWhen: (previous, current) {
            // Only react when settings actually change in LocalTreeBloc
            return previous.settings != current.settings;
          },
          listener: (context, state) {
            // Initialize settings only when they change
            if (state.settings != null) {
              context.read<TreeSettingsBloc>().add(
                    TreeSettingsEvent.initialized(state.settings,
                        isShareLink: true),
                  );
            }
          },
          child: BlocBuilder<LocalTreeBloc, LocalTreeState>(
            builder: (context, state) {
              debugPrint(
                  'TreePage bloc instance: ${context.read<LocalTreeBloc>().hashCode}');
              if (state.isLoadingTree) {
                return const Center(
                  child: DescriptiveLoadingWidget(
                      loading: TreeDisplayLoading.LoadTreeNode),
                );
              } else {
                if (state.selectedTreeId != null) {
                  return size.height < MIM_HEIGHT || size.width < MIM_WIDTH
                      ? const SmallScreenPage()
                      : BlocBuilder<TreeSettingsBloc, TreeSettingsState>(
                          builder: (context, settingsState) {
                            return Row(
                              children: [
                                if (!settingsState.hideSidbar)
                                  Container(
                                    color: kWhitesColor[600],
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 14.0),
                                    width: size.width * SIDE_BAR_WIDTH -
                                        ARROW_BTN_WIDTH,
                                    height: size.height,
                                    child: Column(
                                      children: [
                                        if (state.trees.isNotEmpty)
                                          ListTreeItem(
                                            id: state.trees.first.treeId,
                                            treeName: state.trees.first.treeName
                                                .getOrCrash(),
                                            rootLetter: state
                                                .trees.first.fullName
                                                .getOrCrash()
                                                .substring(0, 1),
                                          )
                                        else
                                          const SizedBox(),
                                        const Spacer(),
                                        const LayersWidget(),
                                        const Spacer(),
                                      ],
                                    ),
                                  ),
                                Container(
                                  width: ARROW_BTN_WIDTH,
                                  height: size.height,
                                  color: kWhitesColor[500],
                                  child: RawMaterialButton(
                                    onPressed: () =>
                                        context.read<TreeSettingsBloc>().add(
                                              const TreeSettingsEvent
                                                  .updateHideSideBar(),
                                            ),
                                    padding: EdgeInsets.only(
                                        right:
                                            settingsState.hideSidbar ? 0 : 6),
                                    elevation: 0,
                                    hoverElevation: 0,
                                    focusElevation: 0,
                                    highlightElevation: 0,
                                    constraints: const BoxConstraints(
                                        minWidth: 0, minHeight: 0),
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    child: Icon(
                                      settingsState.hideSidbar
                                          ? Icons.arrow_forward_ios
                                          : Icons.arrow_back_ios,
                                      color: kRootColors[400],
                                      weight: 20,
                                      grade: 25,
                                      size: 18,
                                    ),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    SizedBox(
                                      width: settingsState.hideSidbar
                                          ? size.width *
                                                  (SIDE_BAR_WIDTH +
                                                      CENTER_WIDTH) -
                                              ARROW_BTN_WIDTH
                                          : size.width * CENTER_WIDTH,
                                      child: const InteractiveView(),
                                    ),
                                    const TreeSearchBar(),
                                    Container(
                                      width: 150,
                                      padding: EdgeInsets.only(
                                          right: 20, top: size.height - 85),
                                      child: BlocBuilder<TreeZoomBloc,
                                          TreeZoomState>(
                                        builder: (context, state) {
                                          return Slider(
                                            min: MIN_ZOOM,
                                            max: MAX_ZOOM,
                                            value: state.zoomScale,
                                            label:
                                                "${state.zoomScale.toStringAsFixed(2)}x",
                                            onChanged: (newScale) {
                                              context.read<TreeZoomBloc>().add(
                                                  TreeZoomEvent.zoomChanged(
                                                      newScale));
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        );
                } else {
                  return const TreeNotFoundPage();
                }
              }
            },
          ),
        ),
      ),
    );
  }
}

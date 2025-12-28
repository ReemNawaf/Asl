import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/widgets/des_loading_wdg.dart';
import 'package:asl/a_presentation/home/widgets/layer_widget.dart';
import 'package:asl/a_presentation/home/widgets/settings_btn.dart';
import 'package:asl/a_presentation/home/widgets/tree_list.dart';
import 'package:asl/a_presentation/share_tree/tree_not_found_page.dart';
import 'package:asl/a_presentation/tree/interactive_viewer.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/child_form/child_form_bloc.dart';
import 'package:asl/b_application/relation_bloc/partner_form/partner_form_bloc.dart';
import 'package:asl/b_application/tree_bloc/draw_tree/draw_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_settings/tree_settings_bloc.dart';
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
        body: BlocBuilder<LocalTreeBloc, LocalTreeState>(
          builder: (context, state) {
            if (state.isLoadingTree) {
              return const DescriptiveLoadingWidget(
                  loading: TreeDisplayLoading.LoadTreeNode);
            } else {
              if (state.selectedTreeId != null) {
                context.read<TreeSettingsBloc>().add(
                      TreeSettingsEvent.initialized(state.settings,
                          isShareLink: true),
                    );
                debugPrint(
                    'TreePage LocalTreeBloc hash: ${context.read<LocalTreeBloc>().hashCode}');
                return Row(
                  children: [
                    Container(
                      color: kWhitesColor[600],
                      width: size.width * 0.18,
                      height: size.height,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 14.0),
                      child: Column(
                        children: [
                          if (state.trees.isNotEmpty)
                            ListTreeItem(
                              id: state.trees.first.treeId,
                              treeName: state.trees.first.treeName.getOrCrash(),
                              rootLetter: state.trees.first.fullName
                                  .getOrCrash()
                                  .substring(0, 1),
                            )
                          else
                            const SizedBox(),
                          const Spacer(),
                          const LayersWidget(),
                          const Spacer(),
                          const SettingsButton(),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.82,
                      child: Stack(
                        children: [
                          SizedBox(
                            width: size.width * 0.82,
                            child: const InteractiveView(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 14.0, right: 14.0, top: 14.0),
                            child: TextField(
                              textAlign: TextAlign.right,
                              decoration: kSearchBarInputDecor(context),
                            ),
                          ),
                          Container(
                            width: 150,
                            padding: EdgeInsets.only(
                                right: 20, top: size.height - 85),
                            child: BlocBuilder<TreeSettingsBloc,
                                TreeSettingsState>(
                              builder: (context, state) {
                                return Slider(
                                  min: MIN_ZOOM,
                                  max: MAX_ZOOM,
                                  value: state.zoomScale,
                                  label:
                                      "${state.zoomScale.toStringAsFixed(2)}x",
                                  onChanged: (newScale) {
                                    context.read<TreeSettingsBloc>().add(
                                        TreeSettingsEvent.zoomChanged(
                                            newScale));
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              } else {
                return const TreeNotFoundPage();
              }
            }
          },
        ),
      ),
    );
  }
}

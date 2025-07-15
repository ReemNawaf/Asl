import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/core/widgets/loading_wdg.dart';
import 'package:asl/a_presentation/home/widgets/layer_widget.dart';
import 'package:asl/a_presentation/home/widgets/share_btn.dart';
import 'package:asl/a_presentation/home/widgets/tree_list.dart';
import 'package:asl/a_presentation/routes/app_router.dart';
import 'package:asl/a_presentation/tree/interactive_viewer.dart';
import 'package:asl/a_presentation/tree/widgets/add_new_tree.dart';
import 'package:asl/b_application/auth_bloc/auth_bloc.dart';
import 'package:asl/b_application/node_bloc/node_watcher/node_watcher_bloc.dart';
import 'package:asl/b_application/share_bloc/share_option/share_option_bloc.dart';
import 'package:asl/b_application/tree_bloc/current_tree/current_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_watcher/tree_watcher_bloc.dart';
import 'package:asl/b_application/tree_bloc/zoom_tree/zoom_tree_bloc.dart';
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
                ShareButton(),
              ],
            ),
          ),
          SizedBox(
            width: size.width * 0.82,
            child: Stack(
              children: [
                SizedBox(
                  width: size.width * 0.82,
                  child: BlocBuilder<TreeWatcherBloc, TreeWatcherState>(
                    builder: (context, state) {
                      return state.map(
                        initial: (_) => const SizedBox(),
                        getAllTreesInProgress: (_) => const LoadingWidget(),
                        getTreeInProgress: (_) => const SizedBox(),
                        gettingAllTreesSuccess: (state) {
                          // print('---- | state.trees: ${state.trees} | ----');
                          if (state.trees.isNotEmpty) {
                            //  (1) Update the Tree
                            //  1. Update the current tree
                            context.read<CurrentTreeBloc>().add(
                                  CurrentTreeEvent.initialized(
                                    currentTree: state.trees.first,
                                    trees: state.trees,
                                  ),
                                );

                            //  2. Update the current nodes
                            context.read<NodeWatcherBloc>().add(
                                NodeWatcherEvent.getTree(state.trees.first));

                            //  3. Update the share settings
                            context.read<ShareOptionBloc>().add(
                                ShareOptionEvent.initialized(
                                    state.trees.first.shareOption ?? 0));

                            return BlocBuilder<CurrentTreeBloc,
                                CurrentTreeState>(
                              builder: (context, state) {
                                if (state.currentTree != null) {
                                  return InteractiveView();
                                } else {
                                  return const SizedBox();
                                }
                              },
                            );
                          } else {
                            return Center(
                              child: SizedBox(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AddNewTree(size: size),
                                  ],
                                ),
                              ),
                            );
                          }
                        },
                        gettingAllTreesFailure: (_) => const SizedBox(),
                        gettingTreeSuccess: (_) => const SizedBox(),
                        gettingTreeFailure: (_) => const SizedBox(),
                      );
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 14.0, right: 14.0, top: 14.0),
                  child: TextField(
                    textAlign: TextAlign.right,
                    decoration: kSearchBarInputDecor(),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
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
                  child: BlocBuilder<ZoomTreeBloc, ZoomTreeState>(
                    builder: (context, state) {
                      return Slider(
                        min: MIN_ZOOM,
                        max: MAX_ZOOM,
                        value: state.scale,
                        label: "${state.scale.toStringAsFixed(2)}x",
                        onChanged: (newScale) {
                          context
                              .read<ZoomTreeBloc>()
                              .add(ZoomTreeChanged(newScale));
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

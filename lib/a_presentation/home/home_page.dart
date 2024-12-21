import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/core/widgets/loading_wdg.dart';
import 'package:asl/a_presentation/home/widgets/layer_widget.dart';
import 'package:asl/a_presentation/home/widgets/share_btn.dart';
import 'package:asl/a_presentation/home/widgets/tree_list.dart';
import 'package:asl/a_presentation/tree/interactive_viewer.dart';
import 'package:asl/a_presentation/tree/widgets/add_new_tree.dart';
import 'package:asl/b_application/node_bloc/node_watcher/node_watcher_bloc.dart';
import 'package:asl/b_application/share_bloc/share_option/share_option_bloc.dart';
import 'package:asl/b_application/tree_bloc/current_tree/current_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_watcher/tree_watcher_bloc.dart';
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
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 14.0),
            width: size.width * 0.82,
            child: Column(
              children: [
                TextField(
                  textAlign: TextAlign.right,
                  decoration: kSearchBarInputDecor(),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  height: size.height * 0.9,
                  child: BlocBuilder<TreeWatcherBloc, TreeWatcherState>(
                    builder: (context, state) {
                      print(
                          '--------------- rebuild after loading new tree ---------------');

                      return state.map(
                        initial: (_) => const SizedBox(),
                        getAllTreesInProgress: (_) => const LoadingWidget(),
                        getTreeInProgress: (_) => const SizedBox(),
                        gettingAllTreesSuccess: (state) {
                          if (state.trees.isNotEmpty) {
                            //  (1) Update the Tree
                            //  1. Update the current tree
                            context.read<CurrentTreeBloc>().add(
                                  CurrentTreeEvent.initialized(
                                      currentTree: state.trees.first,
                                      trees: state.trees),
                                );

                            //  2. Update the current nodes
                            context.read<NodeWatcherBloc>().add(
                                NodeWatcherEvent.watchAllStarted(
                                    state.trees.first));

                            //  3. Update the share settings
                            context.read<ShareOptionBloc>().add(
                                ShareOptionEvent.initialized(
                                    state.trees.first.shareOption ?? 0));

                            return BlocBuilder<CurrentTreeBloc,
                                CurrentTreeState>(
                              builder: (context, state) {
                                print(
                                    'HomePage: rebuild after CurrentTreeBloc state changes');
                                print(
                                    'HomePage: CurrentTreeState.tree ${state.currentTree}');
                                if (state.currentTree != null) {
                                  return const InteractiveView();
                                } else {
                                  return const SizedBox();
                                }
                              },
                            );
                          } else {
                            return SizedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AddNewTree(size: size),
                                ],
                              ),
                            );
                          }
                        },
                        lgettingAllTreesFailure: (_) => const SizedBox(),
                        gettingTreeSuccess: (_) => const SizedBox(),
                        gettingTreeFailure: (_) => const SizedBox(),
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

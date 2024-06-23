import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/tree/tree_watcher/tree_watcher_bloc.dart';
import 'package:asl/c_domain/tree/tree.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TreeList extends StatelessWidget {
  const TreeList({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TreeWatcherBloc, TreeWatcherState>(
      builder: (context, state) {
        return BlocBuilder<TreeWatcherBloc, TreeWatcherState>(
          builder: (context, state) {
            return state.map(
              loadSuccess: (state) {
                return DropdownButton(
                  items: state.trees
                      .map((Tree tree) => DropdownMenuItem<String>(
                            value: tree.treeName.getOrCrash(),
                            child: Text(tree.treeName.getOrCrash(),
                                style: kBodyMedium),
                          ))
                      .toList(),
                  // TODO: Here changeTree() function should be called and the Selected Tree id changed
                  onChanged: (_) {},
                  underline: const SizedBox(),
                  icon: const Icon(Icons.expand_more_rounded),
                  dropdownColor: kRootColors[700],
                  style: kBodyMedium,
                  // value: null,
                  elevation: 1,
                );
              },
              initial: (_) => const SizedBox(),
              inProgress: (_) => const SizedBox(),
              loadInProgress: (_) => const SizedBox(),
              gettingTreeFailure: (_) => const SizedBox(),
              gettingTreeSuccess: (_) => const SizedBox(),
              loadFailure: (_) => const SizedBox(),
            );
          },
        );
      },
    );
  }
}

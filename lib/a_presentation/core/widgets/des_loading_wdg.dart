import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';

enum TreeDisplayLoading { LoadAllTree, LoadTreeNode, DrawTree }

class DescriptiveLoadingWidget extends StatelessWidget {
  final Color color;
  final TreeDisplayLoading loading;
  const DescriptiveLoadingWidget({
    super.key,
    this.color = kRootColors,
    required this.loading,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
          width: 20,
          child: CircularProgressIndicator(
            backgroundColor: color.withOpacity(0.5),
            color: color,
          ),
        ),
        kVSpacer10,
        //Text('${treeDisplayLoadingStages[loading]!['number']!} / ${treeDisplayLoadingStages.length}'),
        Text(getTr(context, treeDisplayLoadingStages[loading]!['message']!)!)
      ],
    );
  }
}

Map<TreeDisplayLoading, Map<String, String>> treeDisplayLoadingStages = {
  TreeDisplayLoading.LoadAllTree: {
    'number': '1',
    'message': 'load_all_trees',
  },
  TreeDisplayLoading.LoadTreeNode: {
    'number': '2',
    'message': 'load_tree_nodes',
  },
  TreeDisplayLoading.DrawTree: {
    'number': '3',
    'message': 'draw_tree',
  },
};

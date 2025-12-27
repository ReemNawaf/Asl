import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
    // Load tree by treeId, then show your existing viewer
    return Scaffold(
      appBar: AppBar(title: Text('Tree $treeId')),
      body: Center(child: Text('Render tree viewer here for $treeId')),
    );
  }
}


// final link = Uri.https('asl.reemnawaf.me', '/trees/$treeId').toString();
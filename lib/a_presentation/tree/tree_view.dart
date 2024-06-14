import 'dart:math';

import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/widgets/app_btn.dart';
import 'package:asl/a_presentation/data.dart';
import 'package:asl/a_presentation/core/widgets/node/root_node.dart';
import 'package:flutter/material.dart';
import 'package:graphview/GraphView.dart';

class TreeView extends StatefulWidget {
  const TreeView({super.key});

  @override
  State<TreeView> createState() => _TreeViewState();
}

class _TreeViewState extends State<TreeView> {
  @override
  Widget build(BuildContext context) {
    return graph.nodes.isEmpty
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppButton(
                label: 'أنشئ شجرة عائلة',
                onPressed: () {
                  final node = Node.Id(0);
                  graph.addNode(node);
                  setState(() {});
                },
                hasIcon: true,
                icon: Image.asset(
                  'assets/images/tree.png',
                  height: 30,
                  width: 30,
                ),
                fillColor: kRootColors[700]!,
                textColor: kRootColors[200]!,
              ),
            ],
          )
        : InteractiveViewer(
            constrained: false,
            alignment: Alignment.centerRight,
            boundaryMargin: const EdgeInsets.all(100),
            minScale: 0.01,
            maxScale: 5.6,
            child: GraphView(
              graph: graph,
              algorithm:
                  BuchheimWalkerAlgorithm(builder, TreeEdgeRenderer(builder)),

              // Styling
              paint: Paint()
                ..color = kBlacksColor
                ..strokeWidth = 2
                ..style = PaintingStyle.stroke,

              builder: (Node node) {
                // I can decide what widget should be shown here based on the id

                return RootNode(
                  name: dTree['root']['name'],
                  yearOfBirth: dTree['root']['yearOfBirth'],
                  yearOfDeath: dTree['root']['yearOfDeath'],
                  isAlie: dTree['root']['isAlie'],
                  gender: Gender.values.byName(dTree['root']['gender']),
                );
              },
            ),
          );
  }

  Random r = Random();

  final Graph graph = Graph()..isTree = true;

  BuchheimWalkerConfiguration builder = BuchheimWalkerConfiguration();

  @override
  void initState() {
    super.initState();

    builder
      ..siblingSeparation = (50)
      ..levelSeparation = (100)
      ..subtreeSeparation = (100)
      ..orientation = (BuchheimWalkerConfiguration.ORIENTATION_BOTTOM_TOP);
  }
}

void addNode(Graph graph, Random r, StateSetter setState) {
  final node = Node.Id(0);
  // var edge = graph.getNodeAtPosition(r.nextInt(graph.nodeCount()));
  // graph.addEdge(edge, node);
  graph.addNode(node);
  setState(() {});
}

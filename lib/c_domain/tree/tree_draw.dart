import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/tree/tree.dart';
import 'package:graphview/GraphView.dart';

class TreeDraw {
  Graph graph = Graph()..isTree = true;
  BuchheimWalkerConfiguration builder = BuchheimWalkerConfiguration();
  final Map<String, int> positions = {};
  static int position = 0;

  TreeDraw() {
    builder
      ..siblingSeparation = (50)
      ..levelSeparation = (100)
      ..subtreeSeparation = (100)
      ..orientation = (BuchheimWalkerConfiguration.ORIENTATION_BOTTOM_TOP);
    addLinkedNode(tnode: TNode.empty(), nodeType: NodeType.none);
  }

  Graph getGraph() => graph;
  BuchheimWalkerConfiguration getBuilder() => builder;

  void addLinkedNode(
      {required TNode tnode,
      required NodeType nodeType,
      UniqueId? linkedToId}) {
    //  Add node
    final node =
        Node.Id({'type': nodeType, 'id': tnode.nodeId, 'tnode': tnode});

    graph.addNode(node);

    //  Save position
    positions[tnode.nodeId.getOrCrash()] = position;

    //  Add edge in not root
    if (nodeType != NodeType.root && linkedToId != null) {
      final linkedToPosition = positions[linkedToId.getOrCrash()]!;
      final linkedToNode = graph.getNodeAtPosition(linkedToPosition);
      graph.addEdge(linkedToNode, node);
    }

    // setState(() {});
  }

  Graph drawTree({required Tree tree, required List<TNode> nodes}) {
    //  Level Roots: Add Root
    //  create first node
    graph = Graph()..isTree = true;
    print('==========| drawTree(): tree: $tree');
    final root = nodes.firstWhere((node) => node.nodeId == tree.rootId);
    print('==========| drawTree(): root: $root');
    addLinkedNode(tnode: root, nodeType: NodeType.root);

    //  Level Stem: Get Root Children
    //  from tree, root id in nodes, the root node children ids
    // for (UniqueId stemId in root.re) {
    //   final stem = nodes.firstWhere((node) => node.nodeId == stemId);

    //   //  on each child create node + edge with the root
    //   addLinkedNode(
    //       tnode: stem, nodeType: NodeType.child, linkedToId: root.nodeId);

    //   //  Level Leaf: Get Grandchildren
    //   //  on each parent (loop 1)
    //   //  go to their children (loop 2)
    //   for (UniqueId grandchildId in stem.children) {
    //     final leaf = nodes.firstWhere((node) => node.nodeId == grandchildId);

    //     //  on each grandchild create node + edge with the parent
    //     addLinkedNode(
    //         tnode: leaf,
    //         nodeType: NodeType.grandchild,
    //         linkedToId: stem.nodeId);
    //   }
    // }

    print('==========| drawTree(): graph ${graph.nodes}');
    return graph;
  }
}

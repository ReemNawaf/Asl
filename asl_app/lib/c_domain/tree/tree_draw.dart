import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/ui_helpers.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/relation/relation.dart';
import 'package:graphview/GraphView.dart';

class TreeDraw {
  Graph graph = Graph()..isTree = true;
  BuchheimWalkerConfiguration builder = BuchheimWalkerConfiguration();
  final Map<String, int> positions = {};
  static int position = 0;

  TreeDraw() {
    builder
      ..siblingSeparation = (30)
      ..levelSeparation = (100)
      ..subtreeSeparation = (100)
      ..orientation = (BuchheimWalkerConfiguration.ORIENTATION_BOTTOM_TOP);
  }

  Graph getGraph() => graph;
  BuchheimWalkerConfiguration getBuilder() => builder;

  void addLinkedNode({
    required TNode tnode,
    required NodeType nodeType,
    Gender? sourceNodeGender,
    int sourceNodeNumRelation = 0,
    UniqueId? linkedToId,
  }) {
    //  Add node
    final node =
        Node.Id({'type': nodeType, 'id': tnode.nodeId, 'tnode': tnode});

    //  Save position
    // print('draw node in position $position');
    graph.addNode(node);
    positions[tnode.nodeId.getOrCrash()] = position++;

    //  Add edge in not root
    if (nodeType != NodeType.root && linkedToId != null) {
      final linkedToPosition = positions[linkedToId.getOrCrash()]!;

      final linkedToNode = graph.getNodeAtPosition(linkedToPosition);
      var graphTitle = '';

      if (nodeType == NodeType.partner) {
        graphTitle =
            getNodePartnerTitle(sourceNodeGender, sourceNodeNumRelation);
      } else {
        graphTitle = getNodeChildrenTitle(sourceNodeGender);
      }

      graph.addEdge(linkedToNode, node, label: graphTitle);

      // print(
      //     '---- | draw ${nodeType.name}: ${tnode.firstName.getOrCrash()} with $linkedToId ($linkedToPosition)');
    }
  }

  Graph drawTree({required TNode root}) {
    // print('LOG | paint tree with root ${root.firstName.getOrCrash()}');
    // print('LOG | drawing ${root.relations.length} relatons');
    //  Level Roots: Add Root
    //  create first node
    graph = Graph()..isTree = true;
    positions.clear();
    position = 0;

    addLinkedNode(
      tnode: root,
      nodeType: NodeType.root,
    );
    // print('draw root: ${root.firstName.getOrCrash()}');

    //  Level Relation: Get Root Children
    //  get the node relations
    if (root.relationsObject.isEmpty) {
      // print('root.relationsObject == null)');
      return graph;
    }

    //  on each partner (loop 1)
    // print('ROOT: root has ${root.relationsObject.length} partners');
    for (Relation relation in root.relationsObject) {
      final partner = relation.partnerNode!;

      //  on each partner create node + edge with the root
      addLinkedNode(
          sourceNodeGender: root.gender,
          sourceNodeNumRelation: root.relations.length,
          tnode: partner,
          nodeType: NodeType.partner,
          linkedToId: root.nodeId);

      //  Level Stem: Get Children

      //  go to their children (loop 2)

      // print('STEM: root partner has ${relation.childrenNodes.length} children');

      for (TNode child in relation.childrenNodes) {
        //  on each child create node + edge with the partner
        addLinkedNode(
          sourceNodeGender: partner.gender,
          sourceNodeNumRelation: partner.relations.length,
          tnode: child,
          nodeType: NodeType.child,
          linkedToId: partner.nodeId,
        );
        //
        final childRelation = child.relationsObject;

        // print('STEM: son has ${childRelation.length} partners');

        for (Relation relation in childRelation) {
          // Sons partners
          final childPartner = relation.partnerNode!;

          //  on each partner create node + edge with the child
          addLinkedNode(
            tnode: childPartner,
            nodeType: NodeType.partner,
            linkedToId: child.nodeId,
            sourceNodeGender: child.gender,
            sourceNodeNumRelation: child.relations.length,
          );

          //  Level Leaf: Get Grandchildren
          //  go to the children children (loop 2)

          // print(
          //     'LEAF: son partner has ${relation.childrenNodes.length} children');
          for (TNode grandchild in relation.childrenNodes) {
            //  on each grandchild create node + edge with the partner child
            addLinkedNode(
              tnode: grandchild,
              nodeType: NodeType.grandchild,
              linkedToId: childPartner.nodeId,
              sourceNodeGender: childPartner.gender,
              sourceNodeNumRelation: childPartner.relations.length,
            );
          }
        }
      }
    }
    // print('positions $positions');

    return graph;
  }
}

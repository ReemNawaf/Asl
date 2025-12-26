import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/relation/relation.dart';

/// Flat Firestore result: nodes + relations for a tree.
/// (We normalize into TreeGraphStore in the application layer.)
typedef TreeGraphData = ({List<TNode> nodes, List<Relation> relations});

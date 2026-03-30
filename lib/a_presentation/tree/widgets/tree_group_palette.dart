import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/tree/tree_group.dart';
import 'package:flutter/material.dart';

/// Resolved group styling for drawing on a tree node (avatar ring + badge).
class TreeGroupNodeAccent {
  const TreeGroupNodeAccent({
    required this.ringColor,
    required this.icon,
  });

  final Color ringColor;
  final IconData icon;
}

/// Returns accent when [node.groupId] matches a group in [groups]; otherwise null.
TreeGroupNodeAccent? treeGroupAccentForNode(TNode node, List<TreeGroup> groups) {
  final gid = node.groupId?.getOrCrash();
  if (gid == null) return null;
  for (final g in groups) {
    if (g.id.getOrCrash() == gid) {
      return TreeGroupNodeAccent(
        ringColor: treeGroupColorFromKey(g.colorKey),
        icon: treeGroupIconFromKey(g.iconKey),
      );
    }
  }
  return null;
}

/// Curated keys for tree groups (colors distinct from node card palette:
/// root / stem / leaf / out / mirror).
const List<String> kTreeGroupColorKeys = [
  'indigo',
  'teal',
  'deepPurple',
  'pink',
  'brown',
  'blueGrey',
  'amber',
  'cyan',
];

const List<String> kTreeGroupIconKeys = [
  'label',
  'people',
  'star',
  'favorite',
  'home',
  'work',
  'school',
  'flag',
  'place',
  'celebration',
];

Color treeGroupColorFromKey(String key) {
  switch (key) {
    case 'indigo':
      return Colors.indigo[400]!;
    case 'teal':
      return Colors.teal[400]!;
    case 'deepPurple':
      return Colors.deepPurple[400]!;
    case 'pink':
      return Colors.pink[400]!;
    case 'brown':
      return Colors.brown[400]!;
    case 'blueGrey':
      return Colors.blueGrey[400]!;
    case 'amber':
      return Colors.amber[700]!;
    case 'cyan':
      return Colors.cyan[600]!;
    default:
      return kBlacksColor[400]!;
  }
}

IconData treeGroupIconFromKey(String key) {
  switch (key) {
    case 'label':
      return Icons.label_outline;
    case 'people':
      return Icons.people_outline;
    case 'star':
      return Icons.star_outline;
    case 'favorite':
      return Icons.favorite_outline;
    case 'home':
      return Icons.home_outlined;
    case 'work':
      return Icons.work_outline;
    case 'school':
      return Icons.school_outlined;
    case 'flag':
      return Icons.flag_outlined;
    case 'place':
      return Icons.place_outlined;
    case 'celebration':
      return Icons.celebration_outlined;
    default:
      return Icons.circle_outlined;
  }
}

import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/tree/tree_group.dart';
import 'package:flutter/material.dart';

/// Full [MaterialColor] for a group key (node card uses the same swatch ladder as roles).
/// Legacy keys are mapped like [treeGroupColorFromKey].
MaterialColor treeGroupMaterialColorFromKey(String key) {
  switch (key) {
    case 'olive':
    case 'blueGrey':
      return kOliveColors;
    case 'amber':
      return kOrangeColors;
    case 'teal':
    case 'cyan':
      return kTealColors;
    case 'terracotta':
    case 'brown':
      return kRoyaBluelColors;
    case 'lavender':
    case 'indigo':
    case 'deepPurple':
      return kLavenderColors;
    case 'rose':
    case 'pink':
      return kCoralColors;
    default:
      return kStemColors;
  }
}

/// Node card palette: use the group’s [MaterialColor] when [node] belongs to a [groups] entry.
MaterialColor materialColorForNodeGroup(
  TNode node,
  MaterialColor defaultPalette,
  List<TreeGroup> groups,
) {
  final gid = node.groupId?.getOrCrash();
  if (gid == null) return defaultPalette;
  for (final g in groups) {
    if (g.id.getOrCrash() == gid) {
      return treeGroupMaterialColorFromKey(g.colorKey);
    }
  }
  return defaultPalette;
}

/// Six curated keys matching [kOliveColors] … [kCoralColors] in app_colors.dart.
const List<String> kTreeGroupColorKeys = [
  'olive',
  'amber',
  'teal',
  'terracotta',
  'lavender',
  'rose',
];

/// Ring / swatch color for a group. Uses 300 swatch (main tone) per palette.
/// Legacy keys from the old 8 Material [Colors.*] options are mapped so existing data still renders.
Color treeGroupColorFromKey(String key) {
  switch (key) {
    case 'olive':
    case 'blueGrey':
      return kOliveColors[300]!;
    case 'amber':
      return kOrangeColors[300]!;
    case 'teal':
    case 'cyan':
      return kTealColors[300]!;
    case 'terracotta':
    case 'brown':
      return kRoyaBluelColors[300]!;
    case 'lavender':
    case 'indigo':
    case 'deepPurple':
      return kLavenderColors[300]!;
    case 'rose':
    case 'pink':
      return kCoralColors[300]!;
    default:
      return kBlacksColor[400]!;
  }
}

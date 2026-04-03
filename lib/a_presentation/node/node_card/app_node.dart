import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/tree/widgets/tree_group_palette.dart';
import 'package:asl/a_presentation/node/node_panel/main_panel.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/b_application/tree_bloc/draw_tree/draw_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_settings/zoom_bloc/tree_zoom_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/injection.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

String treeNodeDisplayNameLine(
  BuildContext context,
  TNode node,
  String name,
  String? fatherName,
) {
  final title = node.personTitle?.trim();
  final prefix = (title != null && title.isNotEmpty) ? '$title ' : '';
  if (node.isUnknown) {
    return getTr(context, 'no_name_provided')!;
  }
  if (fatherName != null) {
    return '$prefix$name ${node.gender == Gender.female ? 'بنت' : 'بن'} $fatherName';
  }
  return '$prefix$name';
}

class AppNode extends StatelessWidget {
  const AppNode({
    super.key,
    required this.type,
    required this.name,
    this.fatherName,
    required this.relation,
    this.yearOfBirth,
    this.yearOfDeath,
    required this.isAlive,
    required this.color,
    required this.gender,
    required this.hasImage,
    required this.node,
    this.image,
    required this.pageContext,
    this.mirrorNodeNoChildren = false,
    this.goToNode = false,
    this.groupAccent,
  });

  /// When set, draws a colored ring around the avatar and a small group icon badge.
  final TreeGroupNodeAccent? groupAccent;

  final NodeType type;
  final String? fatherName;
  final String name;
  final String relation;
  final DateTime? yearOfBirth;
  final DateTime? yearOfDeath;
  final bool isAlive;
  final bool hasImage;
  final MaterialColor color;
  final String? image;
  final Gender gender;
  final TNode node;
  final BuildContext pageContext;
  final bool mirrorNodeNoChildren;
  final bool goToNode;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const kTextHeight = 30.0;
    final displayNoteTrim = node.displayNote?.trim();

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: goToNode
            ? () {
                // zoom to default
                context
                    .read<TreeZoomBloc>()
                    .add(const TreeZoomEvent.zoomChanged(ZOOM_DEF));

                // 2) call your action: center tree / open node panel / highlight
                context
                    .read<DrawTreeBloc>()
                    .navigateToNode(node.nodeId.getOrCrash());
              }
            : () => showPanel(
                  pageContext,
                  size,
                  color,
                  hasImage,
                  node,
                  type,
                ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            Container(
              alignment: Alignment.center,
              width: 250,
              height: 95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: color[600],
              ),
            ),
            _AvatarBlock(
              color: color,
              gender: gender,
              image: image,
              marginBottom: 70,
              groupAccent: groupAccent,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Container(
                    width: 220,
                    height: kTextHeight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: color[300]!,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      treeNodeDisplayNameLine(
                        context,
                        node,
                        name,
                        fatherName,
                      ),
                      style: kCalloutStyle,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Container(
                          width: 60,
                          height: kTextHeight,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: isAlive ? color[300]! : color[400]!,
                          ),
                          child: Text(
                            isAlive
                                ? ''
                                : yearOfDeath?.year.toString() ?? '---',
                            style: kCalloutStyle,
                            textAlign: TextAlign.center,
                          )),
                      const SizedBox(width: 8),
                      Container(
                        width: 60,
                        height: kTextHeight,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: color[400]!,
                        ),
                        child: Text(
                          yearOfBirth?.year.toString() ?? '---',
                          style: kCalloutStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 85,
                        height: kTextHeight,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: color[400]!,
                        ),
                        child: Text(
                          relation,
                          style: kCalloutStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (displayNoteTrim != null && displayNoteTrim.isNotEmpty)
              Positioned(
                right: 190,
                top: 2,
                width: 65,
                child: Text(
                  displayNoteTrim,
                  style: kFootnoteStyle.copyWith(color: color[200]),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                ),
              ),
            if (mirrorNodeNoChildren)
              Positioned(
                right: 0,
                top: 2,
                child: Text(
                  getTr(context, 'children_under_father_tree')!,
                  textAlign: TextAlign.center,
                ),
              ),
            if (groupAccent != null)
              _GroupIconBadge(
                accent: groupAccent!,
              ),
          ],
        ),
      ),
    );
  }
}

/// Matches [AppNode] layout: total width 250, avatar 110×110, avatar lifted [kAvatarMarginBottom].
const double _kAppNodeWidth = 250;
const double _kAvatarSize = 110;
const double _kAvatarMarginBottom = 70;

class _AvatarBlock extends StatelessWidget {
  const _AvatarBlock({
    required this.color,
    required this.gender,
    required this.image,
    required this.marginBottom,
    this.groupAccent,
  });

  final MaterialColor color;
  final Gender gender;
  final String? image;
  final double marginBottom;
  final TreeGroupNodeAccent? groupAccent;

  @override
  Widget build(BuildContext context) {
    final accent = groupAccent;

    // Group ring is the actual border of the 110×110 square (no outer gap).
    final Widget avatar = Container(
      width: _kAvatarSize,
      height: _kAvatarSize,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        border: Border.all(
          color: accent != null ? accent.ringColor : kBlacksColor[100]!,
          width: accent != null ? 3 : 2,
        ),
        color: color[500]!,
      ),
      child: getImageWidget(image, gender),
    );

    return Container(
      margin: EdgeInsets.only(bottom: marginBottom),
      child: avatar,
    );
  }
}

/// Sits in the node [Stack] last so it paints above avatar, name panel, and labels.
/// Placed at the avatar’s bottom-right (same geometry as [_kAppNodeWidth] / [_kAvatarSize] / [_kAvatarMarginBottom]).
class _GroupIconBadge extends StatelessWidget {
  const _GroupIconBadge({required this.accent});

  final TreeGroupNodeAccent accent;

  static const double _badge = 26;

  @override
  Widget build(BuildContext context) {
    const insetFromRight = (_kAppNodeWidth - _kAvatarSize) / 2;
    return Positioned(
      right: insetFromRight - _badge / 2,
      bottom: _kAvatarMarginBottom - _badge / 2,
      child: Material(
        color: kWhitesColor[100],
        shape: CircleBorder(
          side: BorderSide(color: accent.ringColor, width: 2),
        ),
        elevation: 2,
        shadowColor: const Color.fromRGBO(72, 76, 82, 0.35),
        child: SizedBox(
          width: _badge,
          height: _badge,
          child: Icon(
            accent.icon,
            size: 14,
            color: kBlacksColor[200],
          ),
        ),
      ),
    );
  }
}

void showPanel(BuildContext contextPage, Size size, MaterialColor color,
        bool hasImage, TNode node, NodeType type) =>
    showDialog(
      context: contextPage,
      useRootNavigator: false,
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: BlocProvider(
            create: (context) =>
                getIt<NodeFormBloc>()..add(NodeFormEvent.initialized(node)),
            child: MainPanel(
              pageContext: contextPage,
              color: color,
              type: type,
              node: node,
              hasImage: hasImage,
            ),
          ),
        );
      },
    );

Widget getImageWidget(String? image, Gender gender) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(6.0),
    child: image != null
        ? Image.asset(
            image,
            fit: BoxFit.cover,
          )
        : SvgPicture.asset('assets/avatars/${gender.name}.svg'),
  );
}

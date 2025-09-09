import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/node/node_panel/main_panel.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class AppNode extends StatelessWidget {
  const AppNode({
    super.key,
    required this.type,
    required this.name,
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
  });

  final NodeType type;
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

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const kTextHeight = 30.0;

    final imageWidget = ClipRRect(
      borderRadius: BorderRadius.circular(6.0),
      child: image != null
          ? Image.asset(
              image ?? 'assets/images/placeholder.png',
              fit: BoxFit.cover,
            )
          : SvgPicture.asset('assets/avatars/${gender.name}.svg'),
    );

    return GestureDetector(
      onTap: () => showPanel(
        context,
        size,
        imageWidget,
        color,
        hasImage,
        node,
        type,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
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
          Container(
            width: 110,
            height: 110,
            margin: const EdgeInsets.only(bottom: 70),
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              border: Border.all(
                color: kBlacksColor[100]!,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(6.0),
              color: color[500]!,
            ),
            child: imageWidget,
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
                    name,
                    style: kCalloutStyle,
                    textAlign: TextAlign.center,
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
                          isAlive ? '' : yearOfDeath?.year.toString() ?? '---',
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
          )
        ],
      ),
    );
  }
}

void showPanel(BuildContext contextPage, Size size, ClipRRect imageWidget,
        MaterialColor color, bool hasImage, TNode node, NodeType type) =>
    showDialog(
      context: contextPage,
      builder: (BuildContext context) {
        return BlocProvider(
          create: (context) =>
              getIt<NodeFormBloc>()..add(NodeFormEvent.initialized(node)),
          child: MainPanel(
            color: color,
            type: type,
            imageWidget: imageWidget,
            node: node,
            contextPage: contextPage,
            hasImage: hasImage,
          ),
        );
      },
    );

import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class TreeButton extends StatelessWidget {
  const TreeButton(
      {super.key,
      required this.color,
      required this.pageContext,
      required this.contextDialog});
  final MaterialColor color;
  final BuildContext pageContext;
  final BuildContext contextDialog;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          final bloc = pageContext.read<LocalTreeBloc>();
          debugPrint('TreeButton bloc instance: ${bloc.hashCode}');

          final cNode = context.read<NodeFormBloc>().state.node;
          bloc.add(LocalTreeEvent.changeFocusRoot(nodeId: cNode!.nodeId));
          Navigator.pop(context);
        },
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          width: 250,
          height: 80,
          padding: const EdgeInsets.only(left: 10.0, right: 2.4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: SvgPicture.asset(
                  'assets/icons/root.svg',
                  color: color[200],
                  alignment: Alignment.centerLeft,
                ),
              ),
              kHSpacer10,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    getTr(context, 'display_member_tree')!,
                    style: kCalloutStyle,
                  ),
                  Text(
                    getTr(context, 'display_as_family_root')!,
                    style: kFootnoteStyle.copyWith(fontSize: 12.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

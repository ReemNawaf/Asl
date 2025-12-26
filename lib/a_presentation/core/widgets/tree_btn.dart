import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class TreeButton extends StatelessWidget {
  const TreeButton({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final cNode = context.read<NodeFormBloc>().state.node;

        context
            .read<LocalTreeBloc>()
            .add(LocalTreeEvent.changeFocusRoot(nodeId: cNode!.nodeId));
        Navigator.pop(context);
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        width: 220,
        height: 80,
        padding: const EdgeInsets.only(left: 10.0, right: 2.4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
              width: 60,
              child: SvgPicture.asset(
                'assets/icons/tree.svg',
                alignment: Alignment.centerLeft,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  getTr(context, 'display_family_tree')!,
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
    );
  }
}

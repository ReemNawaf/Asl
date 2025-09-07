import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/b_application/node_bloc/node_watcher/node_watcher_bloc.dart';
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
        print('clicked');

        final cNode = context.read<NodeFormBloc>().state.node;

        //  Update the current nodes
        context.read<NodeWatcherBloc>().add(NodeWatcherEvent.getTree(
            treeId: cNode.treeId, rootId: cNode.nodeId));
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
                'icons/tree.svg',
                alignment: Alignment.centerLeft,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'استعراض شجرة العائلة',
                  style: kCalloutStyle,
                ),
                Text(
                  'استعراضه كجذر لشجرة العائلة',
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

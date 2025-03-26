import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/core/widgets/app_view_field.dart';
import 'package:asl/a_presentation/node/node_panel/parents_brothers_panel.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChildrenWidget extends StatelessWidget {
  final bool hasSiblings;
  final double width;
  final double ratio;
  const ChildrenWidget({
    super.key,
    this.hasSiblings = true,
    this.width = (T_PAN_WIDTH - 10),
    this.ratio = 3.5,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NodeFormBloc, NodeFormState>(
      builder: (context, state) {
        // if(state.hasNode && state.node.)
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('الأبناء', style: kFootnoteStyle),
            if (hasSiblings) ...[
              kVSpacer10,
              SizedBox(
                width: width,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: ratio,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const AppViewField(
                      initialValue: 'ffff',
                    );
                  },
                ),
              )
            ] else
              Text('لا يوجد',
                  style: kCaption1Style.copyWith(color: kBlacksColor[600])),
          ],
        );
      },
    );
  }
}

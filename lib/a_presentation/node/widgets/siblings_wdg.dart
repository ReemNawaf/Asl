import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/core/widgets/app_view_field.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SiblingsWidget extends StatelessWidget {
  final bool hasSiblings;
  final Size size;
  final double ratio;
  const SiblingsWidget({
    super.key,
    this.hasSiblings = true,
    required this.size,
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
            const Text('الأشقاء', style: kFootnoteStyle),
            if (hasSiblings) ...[
              kVSpacer10,
              SizedBox(
                width: 310,
                height: 135,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
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

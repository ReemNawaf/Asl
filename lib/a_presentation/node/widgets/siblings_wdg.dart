import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/core/widgets/app_view_field.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BrotherSisterssWidget extends StatelessWidget {
  final Size size;
  final double ratio;
  final List<TNode> brotherSisters;
  final String title;
  const BrotherSisterssWidget({
    super.key,
    required this.size,
    required this.brotherSisters,
    required this.title,
    this.ratio = 3.5,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NodeFormBloc, NodeFormState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kVSpacer20,
            Text(title, style: kFootnoteStyle),
            if (brotherSisters.isNotEmpty) ...[
              kVSpacer5,
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: ratio,
                ),
                itemCount: brotherSisters.length,
                itemBuilder: (context, index) {
                  return AppViewField(
                    initialValue: brotherSisters[index].firstName.getOrCrash(),
                  );
                },
              )
            ] else
              Text(getTr(context, 'no_siblings')!,
                  style: kCaption1Style.copyWith(color: kBlacksColor[600])),
          ],
        );
      },
    );
  }
}

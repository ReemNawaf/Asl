import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/relation_bloc/partner_form/partner_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MarriageStatusBtn extends StatelessWidget {
  const MarriageStatusBtn({
    super.key,
    required this.color,
    required this.ctx,
  });

  final MaterialColor color;
  final BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PartnerFormBloc, PartnerFormState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'حالة الزواج',
              style: kFootnoteStyle.copyWith(
                  fontWeight: FontWeight.bold, height: 1.5),
            ),
            kVSpacer5,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MarriageStatusButton(
                  onTap: () => ctx.read<PartnerFormBloc>().add(
                      const PartnerFormEvent.changeMarriageStatus(
                          MarriageStatus.married)),
                  color: color,
                  text: 'متزوج',
                  selected:
                      state.relation!.marriageStatus == MarriageStatus.married,
                ),
                kHSpacer10,
                MarriageStatusButton(
                  onTap: () => ctx.read<PartnerFormBloc>().add(
                      const PartnerFormEvent.changeMarriageStatus(
                          MarriageStatus.divorced)),
                  color: color,
                  text: 'مطلق',
                  selected:
                      state.relation!.marriageStatus == MarriageStatus.divorced,
                ),
                kHSpacer10,
                MarriageStatusButton(
                  onTap: () => ctx
                      .read<PartnerFormBloc>()
                      .add(const PartnerFormEvent.changeMarriageStatus(
                        MarriageStatus.widowhood,
                      )),
                  color: color,
                  text: 'متوفي',
                  selected: state.relation!.marriageStatus ==
                      MarriageStatus.widowhood,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class MarriageStatusButton extends StatelessWidget {
  const MarriageStatusButton({
    super.key,
    required this.color,
    required this.text,
    required this.selected,
    required this.onTap,
  });

  final MaterialColor color;
  final String text;
  final bool selected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: selected ? color[300] : color[600],
          borderRadius: BorderRadius.circular(8.0),
        ),
        height: 36,
        width: 60,
        child: Text(text),
      ),
    );
  }
}

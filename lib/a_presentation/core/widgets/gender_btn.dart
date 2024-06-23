import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/b_application/tree/tree_form/tree_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class GenderBtn extends StatelessWidget {
  const GenderBtn({
    super.key,
    required this.color,
    required this.size,
    required this.ctx,
  });

  final MaterialColor color;
  final Size size;
  final BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    void maleOrFemale(BuildContext ctx, {required bool isMaleSelected}) {
      if (isMaleSelected == true) {
        ctx
            .read<TreeFormBloc>()
            .add(const TreeFormEvent.changeRootGender(Gender.male));
      } else {
        ctx
            .read<TreeFormBloc>()
            .add(const TreeFormEvent.changeRootGender(Gender.female));
      }
    }

    return BlocBuilder<TreeFormBloc, TreeFormState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: Row(
            children: [
              GenderButton(
                onTap: () => maleOrFemale(context, isMaleSelected: true),
                color: color,
                size: size,
                text: 'ذكر',
                gender: Gender.male,
                selected: Gender.male == state.root.gender,
              ),
              const SizedBox(width: 16.0),
              GenderButton(
                onTap: () => maleOrFemale(context, isMaleSelected: false),
                color: color,
                size: size,
                text: 'أنثى',
                gender: Gender.female,
                selected: Gender.female == state.root.gender,
              ),
            ],
          ),
        );
      },
    );
  }
}

class GenderButton extends StatelessWidget {
  const GenderButton({
    super.key,
    required this.color,
    required this.size,
    required this.text,
    required this.gender,
    required this.selected,
    required this.onTap,
  });

  final MaterialColor color;
  final Size size;
  final String text;
  final Gender gender;
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
        width: 94,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('icons/${gender.name}.svg', height: 22),
            Text(text),
          ],
        ),
      ),
    );
  }
}

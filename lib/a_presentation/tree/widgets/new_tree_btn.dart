import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/core/widgets/app_btn.dart';
import 'package:asl/b_application/tree_bloc/tree_form/tree_form_bloc.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewTreeButton extends StatelessWidget {
  const NewTreeButton({
    super.key,
    required this.isLoading,
  });

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TreeFormBloc, TreeFormState>(
      builder: (context, state) {
        return AppButton(
          onPressed: () {
            context.read<TreeFormBloc>().add(const TreeFormEvent.saved());
          },
          label: getTr(context, 'create_family_tree')!,
          isLoading: state.isSaving,
          textColor: kBlacksColor[300]!,
          fillColor: kRootColors[600]!,
        );
      },
    );
  }
}

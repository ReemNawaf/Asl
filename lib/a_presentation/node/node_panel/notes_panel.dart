import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesPanel extends StatelessWidget {
  const NotesPanel({super.key, required this.color});
  final MaterialColor color;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NodeFormBloc, NodeFormState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kVSpacer20,
            Text(
              getTr(context, 'brief_about_the_member')!,
              style: kHeadLineStyle,
            ),
            kVSpacer10,
            TextFormField(
              maxLines: 10,
              maxLength: NODE_BRIEF_MAX_LENGTH,
              cursorColor: kBlacksColor,
              cursorHeight: 15.0,
              initialValue: state.node!.notes?.getOrCrash(),
              style: kCalloutStyle,
              readOnly: !state.isEditing,
              decoration: kAppFormsInputDecor(
                  hint: getTr(context, 'write_about_the_member')!,
                  color: color[600]!.withOpacity(0.5),
                  isDense: true),
              keyboardType: TextInputType.multiline,
              onSaved: (_) {},
              validator: (_) => context
                  .read<NodeFormBloc>()
                  .state
                  .node!
                  .notes!
                  .value
                  .fold(
                    (f) => f.maybeMap(
                      exceedingLength: (_) => getTr(context, 'notes_too_long')!,
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
              onChanged: (value) => context
                  .read<NodeFormBloc>()
                  .add(NodeFormEvent.notesChanged(value)),
              autovalidateMode: AutovalidateMode.always,
            ),
          ],
        );
      },
    );
  }
}

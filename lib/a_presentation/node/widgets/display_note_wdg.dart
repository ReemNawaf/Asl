import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/widgets/app_long_form_field.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/localization/localization_constants.dart';

class DisplayNoteField extends StatelessWidget {
  const DisplayNoteField({
    super.key,
    required this.node,
    required this.isEditing,
  });

  final TNode node;
  final bool isEditing;

  @override
  Widget build(BuildContext context) {
    if (!isEditing && (node.displayNote == null || node.displayNote!.isEmpty)) {
      return const SizedBox();
    } else {
      return Expanded(
        child: SizedBox(
          height: 82,
          child: AppLongFormField(
            label: getTr(context, 'display_note_label')!,
            hint: getTr(context, 'display_note_hint')!,
            maxLength: NODE_DISPLAY_NOTE_MAX_LENGTH,
            initialValue: node.displayNote ?? '',
            maxLines: 1,
            onChanged: (value) => context.read<NodeFormBloc>().add(
                  NodeFormEvent.displayNoteChanged(value!),
                ),
            validator: (_) => null,
            isEditing: isEditing,
          ),
        ),
      );
    }
  }
}

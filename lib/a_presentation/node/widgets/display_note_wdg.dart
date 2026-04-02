import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Short note shown left of the avatar on the tree card; max [NODE_DISPLAY_NOTE_MAX_LENGTH].
class DisplayNoteField extends StatefulWidget {
  const DisplayNoteField({
    super.key,
    required this.initialNote,
    required this.isEditing,
    required this.label,
    required this.hint,
  });

  final String? initialNote;
  final bool isEditing;
  final String label;
  final String hint;

  @override
  State<DisplayNoteField> createState() => DisplayNoteFieldState();
}

class DisplayNoteFieldState extends State<DisplayNoteField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialNote ?? '');
  }

  @override
  void didUpdateWidget(covariant DisplayNoteField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!oldWidget.isEditing && widget.isEditing) {
      _controller.text = widget.initialNote ?? '';
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final trimmed = widget.initialNote?.trim() ?? '';
    if (!widget.isEditing && trimmed.isEmpty) {
      return const SizedBox.shrink();
    }

    if (!widget.isEditing) {
      return SizedBox(
        width: 250,
        child: Text(trimmed),
      );
    }

    return SizedBox(
      width: 250,
      child: TextField(
        controller: _controller,
        maxLength: NODE_DISPLAY_NOTE_MAX_LENGTH,
        maxLines: 2,
        decoration: InputDecoration(
          labelText: widget.label,
          hintText: widget.hint,
          isDense: true,
        ),
        onChanged: (v) {
          context.read<NodeFormBloc>().add(
                NodeFormEvent.displayNoteChanged(v),
              );
        },
      ),
    );
  }
}

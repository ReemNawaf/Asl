import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NodeName extends StatelessWidget {
  const NodeName({
    super.key,
    required this.node,
    required this.state,
    required this.color,
  });

  final TNode node;
  final NodeFormState state;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var linkToExistingNodeWidget = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppFormField(
          label: node.gender == Gender.male
              ? getTr(context, 'add_with_husband_id')!
              : getTr(context, 'add_with_wife_id')!,
          hint: getTr(context, 'input_member_id')!,
          onChanged: (value) {
            if (value != null && value.trim().length == 36) {
              context.read<NodeFormBloc>().add(NodeFormEvent.linkToExistingNode(
                    getNodeByKey:
                        context.read<LocalTreeBloc>().state.store.getNodeByKey,
                    newNodeId: value.trim(),
                  ));
            }
          },
          isValid: true,
          validator: (_) {
            return null;
          },
        ),
        if (state.linkToExistingNodeNotExist != null &&
            state.linkToExistingNodeNotExist!)
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(getTr(context, 'node_not_exist')!,
                style: kValidationTextStyle),
          ),
      ],
    );

    var addUnknownPartnerWidget = Opacity(
      opacity: 0.5,
      child: AppFormField(
        label: getTr(context, 'first_name')!,
        hint: '',
        validator: (_) => null,
        isEditing: false,
        initialValue: getTr(context, 'no_name_provided')!,
      ),
    );

    var appFormField = AppFormField(
      label: getTr(context, 'first_name')!,
      hint: getTr(context, 'first_name_example')!,
      initialValue: state.node!.firstName.isValid()
          ? state.node!.firstName.getOrCrash()
          : '',
      onChanged: (value) => context
          .read<NodeFormBloc>()
          .add(NodeFormEvent.firstNameChanged(value!.trim())),
      validator: (_) {
        return context.read<NodeFormBloc>().state.node!.firstName.value.fold(
              (f) => f.maybeMap(
                empty: (_) => getTr(context, 'name_cannot_be_empty'),
                spacedName: (_) =>
                    getTr(context, 'first_name_cannot_contain_spaces'),
                shortName: (_) => getTr(context, 'name_too_short'),
                exceedingLength: (_) => getTr(context, 'name_too_long')!,
                orElse: () => null,
              ),
              (_) => null,
            );
      },
      isValid: state.node!.firstName.isValid(),
      isEditing: state.isEditing,
    );

    final noShowingExistingNode = state.linkToExistingNodeNotExist == null ||
        state.linkToExistingNodeNotExist == true;
    final showFieldToFillExistingNodeId = state.isLinkToExistingNode;

    return Opacity(
      opacity: node.isUnknown ? 0.5 : 1,
      child: SizedBox(
          width: 250,
          height: 90,
          child: noShowingExistingNode
              ? (state.node!.isUnknown
                  ? addUnknownPartnerWidget
                  : (showFieldToFillExistingNodeId
                      ? linkToExistingNodeWidget
                      : appFormField))
              : state.linkToExistingNodeNotExist == false
                  ? AppFormField(
                      label: getTr(context, 'first_name')!,
                      hint: '',
                      validator: (_) => null,
                      isEditing: false,
                      initialValue: state.existingNode!.firstName.isValid()
                          ? (state.existingNode!.isUnknown
                              ? getTr(context, 'no_name_provided')!
                              : state.existingNode!.firstName.getOrCrash())
                          : '',
                    )
                  : null),
    );
  }
}

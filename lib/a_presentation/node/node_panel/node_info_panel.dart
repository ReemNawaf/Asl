import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/app_date_field.dart';
import 'package:asl/a_presentation/node/node_panel/node_alive_btn.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/node/widgets/change_unknown_status.dart';
import 'package:asl/a_presentation/node/widgets/child_order.dart';
import 'package:asl/a_presentation/node/widgets/link_to_existing_node.dart';
import 'package:asl/a_presentation/node/widgets/node_gender_btn.dart';
import 'package:asl/a_presentation/core/widgets/tree_btn.dart';
import 'package:asl/a_presentation/node/widgets/node_id_wdg.dart';
import 'package:asl/a_presentation/node/node_person_titles.dart';
import 'package:asl/a_presentation/node/widgets/partner_order.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/local_tree_views/tree_graph_lineage.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class InfoPanel extends StatelessWidget {
  const InfoPanel({
    super.key,
    required this.color,
    required this.contextDialog,
    required this.pageContext,
    required this.type,
  });

  final MaterialColor color;
  final BuildContext contextDialog;
  final BuildContext pageContext;
  final NodeType type;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return BlocBuilder<NodeFormBloc, NodeFormState>(
      builder: (context, state) {
        final node = state.node;
        final childOrderVisible =
            node?.upperFamily != null && type != NodeType.partner;
        final genderBtnVisible = state.node?.relations.isEmpty ?? false;
        if (node == null) return const SizedBox();

        final fullName = TreeGraphLineage.fatherBinText(
            store: context.read<LocalTreeBloc>().state.store,
            personId: node.nodeId,
            stopAtNodeId: context.read<LocalTreeBloc>().state.mainRootId,
            gender: node.gender);

        return Form(
          autovalidateMode: state.showErrorMessages,
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kVSpacer30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NodeName(node: node, state: state, color: color),
                    kHSpacer20,
                    if (node.upperFamily == null &&
                        type == NodeType.partner &&
                        state.isEditing)
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ChangeUnknownStatus(node: node, color: color),
                            kVSpacer5,
                            LinkToExistingNode(node: node, color: color),
                          ],
                        ),
                      ),
                  ],
                ),
                if (!node.isUnknown) ...[
                  kVSpacer15,
                  SizedBox(
                    width: 250,
                    child: DropdownButtonFormField<String?>(
                      value: normalizePersonTitleForGender(
                        node.personTitle,
                        node.gender,
                      ),
                      isExpanded: true,
                      decoration: InputDecoration(
                        labelText: getTr(context, 'person_title_label'),
                        isDense: true,
                      ),
                      items: [
                        DropdownMenuItem<String?>(
                          value: null,
                          child: Text(getTr(context, 'person_title_none')!),
                        ),
                        ...personTitlesForGender(node.gender).map(
                          (t) => DropdownMenuItem<String?>(
                            value: t,
                            child: Text(t),
                          ),
                        ),
                      ],
                      onChanged: state.isEditing
                          ? (v) {
                              context.read<NodeFormBloc>().add(
                                    NodeFormEvent.personTitleChanged(v),
                                  );
                            }
                          : null,
                    ),
                  ),
                ],
                BlocBuilder<LocalTreeBloc, LocalTreeState>(
                  builder: (context, treeState) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        if (childOrderVisible)
                          ChildOrder(
                              node: node, treeState: treeState, state: state),
                        if (genderBtnVisible)
                          Padding(
                            padding: const EdgeInsets.only(top: 1.0),
                            child: NodeGenderBtn(
                              color: color,
                              ctx: context,
                              isEditing: state.isEditing,
                            ),
                          ),
                      ],
                    );
                  },
                ),
                if (childOrderVisible || genderBtnVisible) kVSpacer20,
                if (state.node!.relations.isNotEmpty)
                  PartnerOrder(node: node, state: state, color: color),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 250,
                          height: 80,
                          child: AppDateField(
                            formKey: formKey,
                            label: getTr(context, 'birth_date')!,
                            hint: '',
                            withPadding: false,
                            validate: (validate) => "",
                            save: (_) {},
                            endDate: state.node!.deathDate
                                    ?.subtract(const Duration(days: 1)) ??
                                DateTime.now(),
                            startDate: DateTime(1000),
                            changeDate: (pickedDate) => context
                                .read<NodeFormBloc>()
                                .add(
                                    NodeFormEvent.birthDateChanged(pickedDate)),
                            dateController: TextEditingController(
                              text: state.node!.birthDate == null
                                  ? 'لا يوجد تاريخ ميلاد'
                                  : DateFormat.yMMMd()
                                      .format(state.node!.birthDate!),
                            ),
                            isEditing: state.isEditing,
                          ),
                        ),
                        if (!state.node!.isAlive)
                          SizedBox(
                            width: 250,
                            height: 80,
                            child: AppDateField(
                              formKey: formKey,
                              label: getTr(context, 'death_date')!,
                              withPadding: false,
                              hint: '',
                              validate: (validate) => "",
                              save: (_) {},
                              changeDate: (pickedDate) => context
                                  .read<NodeFormBloc>()
                                  .add(NodeFormEvent.deathDateChanged(
                                      pickedDate)),
                              dateController: TextEditingController(
                                text: state.node!.deathDate == null
                                    ? getTr(context, 'there_is_no_death_date')
                                    : DateFormat.yMMMd()
                                        .format(state.node!.deathDate!),
                              ),
                              isEditing: state.isEditing,
                              startDate: state.node!.birthDate
                                      ?.add(const Duration(days: 1)) ??
                                  DateTime(1000),
                              endDate: DateTime.now(),
                            ),
                          ),
                      ],
                    ),
                    kHSpacer20,
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: NodeAliveBtn(
                        color: color,
                        ctx: context,
                        isEditing: state.isEditing,
                      ),
                    ),
                  ],
                ),
                kVSpacer20,
                TreeButton(
                    color: color,
                    contextDialog: contextDialog,
                    pageContext: pageContext),
                BlocBuilder<LocalTreeBloc, LocalTreeState>(
                  builder: (context, treeState) {
                    final groups = treeState.settings?.groups ?? [];
                    if (groups.isEmpty) return const SizedBox.shrink();

                    final gid = node.groupId?.getOrCrash();
                    final validIds =
                        groups.map((g) => g.id.getOrCrash()).toSet();
                    final selected =
                        gid != null && validIds.contains(gid) ? gid : null;

                    return Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: SizedBox(
                        width: 250,
                        child: DropdownButtonFormField<String?>(
                          value: selected,
                          isExpanded: true,
                          decoration: InputDecoration(
                            labelText: getTr(context, 'tree_group_membership'),
                            isDense: true,
                          ),
                          items: [
                            DropdownMenuItem<String?>(
                              value: null,
                              child: Text(getTr(context, 'tree_group_none')!),
                            ),
                            ...groups.map(
                              (g) => DropdownMenuItem<String?>(
                                value: g.id.getOrCrash(),
                                child: Text(
                                  g.name,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                          onChanged: state.isEditing
                              ? (v) {
                                  context.read<NodeFormBloc>().add(
                                        NodeFormEvent.groupIdChanged(
                                          v == null
                                              ? null
                                              : UniqueId.fromUniqueString(v),
                                        ),
                                      );
                                }
                              : null,
                        ),
                      ),
                    );
                  },
                ),
                if (!state.node!.isUnknown)
                  NodeIdWidget(
                    contextDialog: contextDialog,
                    id: state.node!.nodeId.getOrCrash(),
                    color: color,
                    name: fullName,
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}

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

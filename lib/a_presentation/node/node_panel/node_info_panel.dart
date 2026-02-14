import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/app_date_field.dart';
import 'package:asl/a_presentation/node/node_panel/node_alive_btn.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/node/widgets/change_unknown_status.dart';
import 'package:asl/a_presentation/node/widgets/child_order.dart';
import 'package:asl/a_presentation/node/widgets/node_gender_btn.dart';
import 'package:asl/a_presentation/core/widgets/tree_btn.dart';
import 'package:asl/a_presentation/node/widgets/node_id_wdg.dart';
import 'package:asl/a_presentation/node/widgets/partner_order.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/c_domain/local_tree_views/tree_graph_lineage.dart';
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
                    SizedBox(
                      width: 250,
                      height: 90,
                      child: AppFormField(
                        label: getTr(context, 'first_name')!,
                        hint: getTr(context, 'first_name_example')!,
                        initialValue: state.node!.firstName.isValid()
                            ? (state.node!.isUnknown
                                ? getTr(context, 'no_name_provided')!
                                : state.node!.firstName.getOrCrash())
                            : '',
                        onChanged: (value) => context
                            .read<NodeFormBloc>()
                            .add(NodeFormEvent.firstNameChanged(value!.trim())),
                        validator: (_) {
                          return context
                              .read<NodeFormBloc>()
                              .state
                              .node!
                              .firstName
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  empty: (_) =>
                                      getTr(context, 'name_cannot_be_empty'),
                                  spacedName: (_) => getTr(context,
                                      'first_name_cannot_contain_spaces'),
                                  shortName: (_) =>
                                      getTr(context, 'name_too_short'),
                                  exceedingLength: (_) =>
                                      getTr(context, 'name_too_long')!,
                                  orElse: () => null,
                                ),
                                (_) => null,
                              );
                        },
                        isValid: state.node!.firstName.isValid(),
                        isEditing: state.isEditing,
                      ),
                    ),
                    kHSpacer20,
                    if (state.node!.relations.isEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 1.0),
                        child: NodeGenderBtn(
                          color: color,
                          ctx: context,
                          isEditing: state.isEditing,
                        ),
                      )
                  ],
                ),
                BlocBuilder<LocalTreeBloc, LocalTreeState>(
                  builder: (context, treeState) {
                    return Row(
                      children: [
                        if (node.upperFamily != null &&
                            type != NodeType.partner)
                          ChildPartner(
                              node: node, treeState: treeState, state: state)
                        else if (state.isEditing)
                          ChangeUnknownStatus(node: node, color: color),
                      ],
                    );
                  },
                ),
                kVSpacer10,
                if (state.node!.relations.isNotEmpty) ...[
                  PartnerOrder(node: node, state: state),
                  kVSpacer10,
                ],
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

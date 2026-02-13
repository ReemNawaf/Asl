import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';

import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/core/app_date_field.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/node/widgets/marriage_status_btn.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/relation_bloc/partner_form/partner_form_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class AddPartnerWidget extends StatelessWidget {
  const AddPartnerWidget({
    super.key,
    required this.node,
    required this.color,
  });

  final TNode node;
  final MaterialColor color;

  void addPartnerById(BuildContext context, bool isAdding) {
    context
        .read<PartnerFormBloc>()
        .add(PartnerFormEvent.showPartnerByNodeId(isAdding));
  }

  void addUnknownPartner(BuildContext context, bool isAdding) {
    context
        .read<PartnerFormBloc>()
        .add(PartnerFormEvent.showUnknownPartner(isAdding));
    context
        .read<PartnerFormBloc>()
        .add(PartnerFormEvent.addUnknownPartner(node: node));
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return BlocBuilder<PartnerFormBloc, PartnerFormState>(
      builder: (context, state) {
        final isAddingPartner = state.isPartnerById;
        final isAddingUnknownPartner = state.isAddingUnknownPartner;

        return Form(
          autovalidateMode: state.showErrorMessages,
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    isAddingPartner
                        ? (node.gender == Gender.male
                            ? getTr(context, 'wife_is_not_in_the_tree')!
                            : getTr(context, 'husband_is_not_in_the_tree')!)
                        : (node.gender == Gender.male
                            ? getTr(context, 'wife_is_in_the_tree')!
                            : getTr(context, 'husband_is_in_the_tree')!),
                    style: kFootnoteStyle.copyWith(
                        fontWeight: FontWeight.bold, wordSpacing: 2.0),
                  ),
                  kHSpacer5,
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: isAddingPartner
                          ? () => addPartnerById(context, false)
                          : () => addPartnerById(context, true),
                      child: Text(
                        '${isAddingPartner ? getTr(context, "add_new_member")! : getTr(context, 'add_with_id')!}.',
                        style: kFootnoteStyle.copyWith(
                          color: color,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 2.0,
                        ),
                      ),
                    ),
                  ),
                  kHSpacer5,
                  Text(
                    isAddingUnknownPartner
                        ? (node.gender == Gender.male
                            ? getTr(context, 'known_partner_name_female')!
                            : getTr(context, 'known_partner_name_male')!)
                        : (node.gender == Gender.male
                            ? getTr(context, 'unknown_partner_name_female')!
                            : getTr(context, 'unknown_partner_name_male')!),
                    style: kFootnoteStyle.copyWith(
                        fontWeight: FontWeight.bold, wordSpacing: 2.0),
                  ),
                  kHSpacer5,
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: isAddingUnknownPartner
                          ? () => addUnknownPartner(context, false)
                          : () => addUnknownPartner(context, true),
                      child: Text(
                        '${isAddingUnknownPartner ? getTr(context, "add_known_partner")! : getTr(context, 'add_unknown_partner')!}.',
                        style: kFootnoteStyle.copyWith(
                          color: color,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 2.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              kVSpacer20,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PartnerName(
                    node: node,
                    state: state,
                    color: color,
                  ),
                  kHSpacer20,
                  MarriageStatusBtn(color: color, ctx: context),
                ],
              ),
              kVSpacer15,
              Row(
                children: [
                  SizedBox(
                    width: 230,
                    height: 80,
                    child: AppDateField(
                      formKey: formKey,
                      label: getTr(context, 'marriage_date')!,
                      hint: '',
                      endDate: state.relation!.endDate ?? DateTime(3000),
                      startDate: DateTime(1000),
                      validate: (validate) => "",
                      save: (_) {},
                      isEditing: true,
                      changeDate: (pickedDate) {
                        context.read<PartnerFormBloc>().add(
                            PartnerFormEvent.changeMarriageDate(pickedDate));
                      },
                      dateController: TextEditingController(
                        text: state.relation!.marriageDate == null
                            ? ''
                            : DateFormat.yMMMd()
                                .format(state.relation!.marriageDate!),
                      ),
                      withPadding: false,
                    ),
                  ),
                  if (state.relation!.marriageStatus !=
                      MarriageStatus.married) ...[
                    kHSpacer40,
                    SizedBox(
                      width: 230,
                      height: 80,
                      child: AppDateField(
                        formKey: formKey,
                        label: getTr(context, 'end_date')!,
                        hint: '',
                        validate: (validate) => "",
                        isEditing: true,
                        save: (_) {},
                        changeDate: (pickedDate) {
                          context.read<PartnerFormBloc>().add(
                                PartnerFormEvent.changeRelationEndDate(
                                  pickedDate,
                                ),
                              );
                        },
                        startDate: state.relation!.marriageDate
                                ?.add(const Duration(days: 1)) ??
                            DateTime(1000),
                        endDate: DateTime.now().add(const Duration(days: 1)),
                        dateController: TextEditingController(
                          text: state.relation!.endDate == null
                              ? ''
                              : DateFormat.yMMMd()
                                  .format(state.relation!.endDate!),
                        ),
                        withPadding: false,
                      ),
                    ),
                  ],
                ],
              ),
              kVSpacer10,
            ],
          ),
        );
      },
    );
  }
}

class PartnerName extends StatelessWidget {
  const PartnerName({
    super.key,
    required this.node,
    required this.state,
    required this.color,
  });

  final TNode node;
  final PartnerFormState state;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var addPartnerById = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppFormField(
          label: node.gender == Gender.male
              ? getTr(context, 'add_with_wife_id')!
              : getTr(context, 'add_with_husband_id')!,
          hint: getTr(context, 'input_member_id')!,
          onChanged: (value) {
            if (value != null && value.trim().length == 36) {
              final partner = context
                  .read<LocalTreeBloc>()
                  .state
                  .store
                  .getNodeByKey(value.trim());

              context.read<PartnerFormBloc>().add(
                  PartnerFormEvent.addPartnerByNodeId(
                      node: node, partner: partner));
            }
          },
          isValid: true,
          validator: (_) {
            return null;
          },
        ),
        if (state.partnerNotExist != null && state.partnerNotExist!)
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
        label: node.gender == Gender.male
            ? getTr(context, 'add_wife')!
            : getTr(context, 'add_husband')!,
        hint: '',
        validator: (_) => null,
        isEditing: false,
        initialValue: getTr(context, 'no_name_provided')!,
      ),
    );

    var appFormField = AppFormField(
      label: node.gender == Gender.male
          ? getTr(context, 'add_wife')!
          : getTr(context, 'add_husband')!,
      hint: getTr(context, 'full_name')!,
      onChanged: (value) {
        context
            .read<PartnerFormBloc>()
            .add(PartnerFormEvent.changeName(value!.trim()));
      },
      isValid:
          context.read<PartnerFormBloc>().state.partner.firstName.isValid() ||
              context.read<PartnerFormBloc>().state.showErrorMessages !=
                  AutovalidateMode.always,
      validator: (_) {
        // if the name isn't valid, then show me the validation
        return context.read<PartnerFormBloc>().state.partner.firstName.isValid()
            ? null
            : state.partner.firstName.value.fold(
                (f) => f.maybeMap(
                  empty: (_) => getTr(context, 'first_name_cannot_be_empty'),
                  shortName: (_) => getTr(context, 'first_name_short'),
                  spacedName: (_) =>
                      getTr(context, 'first_name_cannot_contain_spaces'),
                  orElse: () => null,
                ),
                (_) => null,
              );
      },
    );

    var displayPartnerNameWidget = AppFormField(
      label: node.gender == Gender.male
          ? getTr(context, 'add_wife')!
          : getTr(context, 'add_husband')!,
      hint: '',
      validator: (_) => null,
      isEditing: false,
      initialValue: state.partner.firstName.isValid()
          ? (state.partner.isUnknown
              ? getTr(context, 'no_name_provided')!
              : state.partner.firstName.getOrCrash())
          : '',
    );

    return SizedBox(
        width: 250,
        child: state.partnerNotExist == null || state.partnerNotExist == true
            ? (state.isAddingUnknownPartner
                ? addUnknownPartnerWidget
                : (state.isPartnerById ? addPartnerById : appFormField))
            : state.partnerNotExist == false
                ? displayPartnerNameWidget
                : null);
  }
}

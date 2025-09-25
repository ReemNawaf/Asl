import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';

import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/core/app_date_field.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/core/widgets/loading_wdg.dart';
import 'package:asl/a_presentation/node/widgets/marriage_status_btn.dart';
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

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return BlocBuilder<PartnerFormBloc, PartnerFormState>(
      builder: (context, state) {
        final isAddingPartner = state.isPartnerById;

        return Form(
          autovalidateMode: state.showErrorMessages,
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: isAddingPartner
                    ? () => addPartnerById(context, false)
                    : () => addPartnerById(context, true),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: isAddingPartner
                      ? TextSpan(
                          text:
                              // TODO: add localization here
                              ' الزوج${node.gender == Gender.male ? 'ة' : ''} ليس في الشجرة ',
                          style: kFootnoteStyle.copyWith(
                              fontWeight: FontWeight.bold, wordSpacing: 2.0),
                          children: [
                            TextSpan(
                              // TODO: add localization here
                              text: 'أضف عضو جديد',
                              style: kFootnoteStyle.copyWith(
                                color: color,
                                fontWeight: FontWeight.bold,
                                wordSpacing: 2.0,
                              ),
                            ),
                          ],
                        )
                      : TextSpan(
                          // TODO: add localization here
                          text:
                              ' الزوج${node.gender == Gender.male ? 'ة' : ''} في الشجرة ',
                          style: kFootnoteStyle.copyWith(
                              fontWeight: FontWeight.bold, wordSpacing: 2.0),
                          children: [
                            TextSpan(
                              // TODO: add localization here
                              text: 'أضف بالمعرف (ID)',
                              style: kFootnoteStyle.copyWith(
                                color: color,
                                fontWeight: FontWeight.bold,
                                wordSpacing: 2.0,
                              ),
                            ),
                          ],
                        ),
                ),
              ),
              kVSpacer20,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PartnerName(
                    isAddingPartner: isAddingPartner,
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
                      // TODO: add localization here
                      label: 'تاريخ الزواج',
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
                        // TODO: add localization here
                        label: 'تاريخ النهاية',
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
    required this.isAddingPartner,
    required this.node,
    required this.state,
    required this.color,
  });

  final bool isAddingPartner;
  final TNode node;
  final PartnerFormState state;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var addPartnerById = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppFormField(
          // TODO: add localization here
          label: 'إضافة معرف الزوج${node.gender == Gender.male ? 'ة' : ''}',

          // TODO: add localization here
          hint: 'أدخل معرف العضو',
          onChanged: (value) {
            if (value != null && value.trim().length == 36) {
              context.read<PartnerFormBloc>().add(
                  PartnerFormEvent.addPartnerByNodeId(
                      node: node, partnerId: value.trim()));
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

    var appFormField = AppFormField(
      // TODO: add localization here
      label: 'إضافة زوج${node.gender == Gender.male ? 'ة' : ''}',
      // TODO: add localization here
      hint: 'الاسم الكامل',
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
                  shortFirstName: (_) => getTr(context, 'first_name_short'),
                  spacedFirstName: (_) =>
                      getTr(context, 'first_name_cannot_contain_spaces'),
                  orElse: () => null,
                ),
                (_) => null,
              );
      },
    );

    var displayPartnerNameWidget = AppFormField(
      label: 'اسم زوج${node.gender == Gender.male ? 'ة' : ''}',
      hint: '',
      validator: (_) => null,
      isEditing: false,
      initialValue: state.partner.firstName.isValid()
          ? state.partner.firstName.getOrCrash()
          : '',
    );

    return SizedBox(
        width: 250,
        child: state.gettingPartnerNodeByIdInProgress
            ? Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: LoadingWidget(color: color),
              )
            : state.partnerNotExist == null || state.partnerNotExist == true
                ? (isAddingPartner ? addPartnerById : appFormField)
                : state.partnerNotExist == false
                    ? displayPartnerNameWidget
                    : null);
  }
}

import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/app_date_field.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';

import 'package:asl/a_presentation/core/widgets/app_member_btn.dart';
import 'package:asl/a_presentation/node/widgets/marriage_status_btn.dart';
import 'package:asl/a_presentation/node/widgets/partner_wdg.dart';
import 'package:asl/b_application/relation_bloc/partner_form/partner_form_bloc.dart';

import 'package:asl/c_domain/node/t_node.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

const T_PAN_WIDTH = PAN_WIDTH - 106;

class RelationsPanel extends StatelessWidget {
  const RelationsPanel({
    super.key,
    required this.color,
    required this.node,
  });

  final MaterialColor color;
  final TNode node;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.only(left: 10.0, top: 20.0),
      height: PAN_HEIGHT,
      width: T_PAN_WIDTH,
      child: SingleChildScrollView(
        child: BlocBuilder<PartnerFormBloc, PartnerFormState>(
          builder: (context, state) {
            return SizedBox(
              width: (T_PAN_WIDTH - 10) / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  PartnerWidget(node: node),
                  kVSpacer10,
                  if (state.isAdding) ...[
                    Form(
                      autovalidateMode: state.showErrorMessages,
                      key: formKey,
                      child: SizedBox(
                        width: (T_PAN_WIDTH - 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  width: 250,
                                  height: 90,
                                  child: AppFormField(
                                    label: node.gender == Gender.male
                                        ? 'إضافة زوجة'
                                        : 'إضافة زوج',
                                    hint: 'الاسم الكامل',
                                    onChanged: (value) => context
                                        .read<PartnerFormBloc>()
                                        .add(PartnerFormEvent.changeName(
                                            value!.trim())),
                                    isValid: context
                                                .read<PartnerFormBloc>()
                                                .state
                                                .showErrorMessages !=
                                            AutovalidateMode.always ||
                                        context
                                            .read<PartnerFormBloc>()
                                            .state
                                            .partner!
                                            .firstName
                                            .isValid(),
                                    validator: (_) {
                                      return state.partner!.firstName.value
                                          .fold(
                                        (f) => f.maybeMap(
                                          empty: (_) =>
                                              'الاسم الأول يمكن أن يكون فارغًا',
                                          spacedFirstName: (_) =>
                                              'الاسم الأول لا يمكن أن يحتوي على مسافات',
                                          orElse: () => null,
                                        ),
                                        (_) => null,
                                      );
                                    },
                                  ),
                                ),
                                BlocBuilder<PartnerFormBloc, PartnerFormState>(
                                  builder: (context, state) {
                                    return SizedBox(
                                      width: 250,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 230,
                                            height: 80,
                                            child: AppDateField(
                                              formKey: formKey,
                                              label: 'تاريخ الزواج',
                                              hint: '',
                                              endDate: state.relation!.endDate,
                                              validate: (validate) => "",
                                              save: (_) {},
                                              isEditing: true,
                                              changeDate: (pickedDate) {
                                                context
                                                    .read<PartnerFormBloc>()
                                                    .add(PartnerFormEvent
                                                        .changeMarriageDate(
                                                            pickedDate));
                                              },
                                              dateController:
                                                  TextEditingController(
                                                text: state.relation!
                                                            .marriageDate ==
                                                        null
                                                    ? ''
                                                    : DateFormat.yMMMd().format(
                                                        state.relation!
                                                            .marriageDate!),
                                              ),
                                              withPadding: false,
                                            ),
                                          ),
                                          if (state.relation!.marriageStatus !=
                                              MarriageStatus.married)
                                            SizedBox(
                                              width: 230,
                                              height: 80,
                                              child: AppDateField(
                                                formKey: formKey,
                                                label: 'تاريخ النهاية',
                                                hint: '',
                                                validate: (validate) => "",
                                                isEditing: true,
                                                save: (_) {},
                                                changeDate: (pickedDate) {
                                                  context
                                                      .read<PartnerFormBloc>()
                                                      .add(
                                                        PartnerFormEvent
                                                            .changeRelationEndDate(
                                                          pickedDate,
                                                        ),
                                                      );
                                                },
                                                startDate: state
                                                    .relation!.marriageDate
                                                    ?.add(
                                                  const Duration(days: 1),
                                                ),
                                                endDate: DateTime.now(),
                                                dateController:
                                                    TextEditingController(
                                                  text:
                                                      state.relation!.endDate ==
                                                              null
                                                          ? ''
                                                          : DateFormat.yMMMd()
                                                              .format(state
                                                                  .relation!
                                                                  .endDate!),
                                                ),
                                                withPadding: false,
                                              ),
                                            ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                            kHSpacer20,
                            MarriageStatusBtn(color: color, ctx: context),
                          ],
                        ),
                      ),
                    ),
                  ],
                  AddMemberButton(
                    onPressed: () {
                      state.isAdding
                          ? context
                              .read<PartnerFormBloc>()
                              .add(const PartnerFormEvent.saved())
                          : context.read<PartnerFormBloc>().add(
                                PartnerFormEvent.initialized(node),
                              );
                    },
                    label: 'إضافة زوج${node.gender == Gender.male ? 'ة' : ''}',
                    color: color,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

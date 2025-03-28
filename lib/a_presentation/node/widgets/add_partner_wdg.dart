import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/app_date_field.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/node/node_panel/relations_panel.dart';
import 'package:asl/a_presentation/node/widgets/marriage_status_btn.dart';
import 'package:asl/b_application/relation_bloc/partner_form/partner_form_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class AddPartnerWidget extends StatelessWidget {
  const AddPartnerWidget({
    super.key,
    required this.node,
    required this.color,
    required this.state,
  });

  final TNode node;
  final MaterialColor color;
  final PartnerFormState state;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Form(
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
                    label:
                        node.gender == Gender.male ? 'إضافة زوجة' : 'إضافة زوج',
                    hint: 'الاسم الكامل',
                    onChanged: (value) => context
                        .read<PartnerFormBloc>()
                        .add(PartnerFormEvent.changeName(value!.trim())),
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
                      return state.partner!.firstName.value.fold(
                        (f) => f.maybeMap(
                          empty: (_) => 'الاسم الأول يمكن أن يكون فارغًا',
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
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
                                context.read<PartnerFormBloc>().add(
                                    PartnerFormEvent.changeMarriageDate(
                                        pickedDate));
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
                                  context.read<PartnerFormBloc>().add(
                                        PartnerFormEvent.changeRelationEndDate(
                                          pickedDate,
                                        ),
                                      );
                                },
                                startDate: state.relation!.marriageDate?.add(
                                  const Duration(days: 1),
                                ),
                                endDate: DateTime.now(),
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
    );
  }
}

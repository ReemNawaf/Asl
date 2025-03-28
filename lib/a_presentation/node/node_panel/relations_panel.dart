import 'package:asl/a_presentation/a_shared/constants.dart';

import 'package:asl/a_presentation/core/widgets/app_member_btn.dart';
import 'package:asl/a_presentation/node/widgets/add_partner_wdg.dart';
import 'package:asl/a_presentation/node/widgets/partner_wdg.dart';
import 'package:asl/b_application/relation_bloc/partner_form/partner_form_bloc.dart';

import 'package:asl/c_domain/node/t_node.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                  PartnerWidget(
                    node: node,
                    formState: state,
                    color: color,
                  ),
                  kVSpacer10,
                  if (state.isAdding) ...[
                    AddPartnerWidget(node: node, color: color, state: state),
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

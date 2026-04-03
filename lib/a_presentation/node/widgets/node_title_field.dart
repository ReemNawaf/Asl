import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/core/widgets/drop_down_item.dart';
import 'package:asl/a_presentation/node/node_person_titles.dart';
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NodeTtitle extends StatelessWidget {
  const NodeTtitle({
    super.key,
    required this.node,
    required this.personTitle,
    required this.gender,
    required this.isEditing,
  });

  final TNode? node;
  final String? personTitle;
  final Gender gender;
  final bool isEditing;

  @override
  Widget build(BuildContext context) {
    final menuItems = <DropdownMenuItem<String?>>[
      DropdownMenuItem<String?>(
        value: null,
        child: AppDropDownItem(
          label: getTr(context, 'person_title_none')!,
        ),
      ),
      ...personTitlesForGender(gender).map(
        (String label) => DropdownMenuItem<String?>(
          value: label,
          child: AppDropDownItem(label: label),
        ),
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          getTr(context, 'person_title_label')!,
          style: kFootnoteStyle.copyWith(fontWeight: FontWeight.bold),
        ),
        kVSpacer5,
        Container(
          decoration: kAppFormsDecor,
          height: 35,
          width: 250,
          child: DropdownButton<String?>(
            items: menuItems,
            isExpanded: true,
            value: normalizePersonTitleForGender(
              context.read<NodeFormBloc>().state.node?.personTitle,
              gender,
            ),
            onChanged: isEditing
                ? (String? value) {
                    context
                        .read<NodeFormBloc>()
                        .add(NodeFormEvent.personTitleChanged(value));
                  }
                : null,
            underline: const SizedBox(),
            icon: const Icon(Icons.expand_more_rounded),
            dropdownColor: kWhitesColor[600],
            borderRadius: BorderRadius.circular(kAppCircularRadius),
            style: kBodyMedium,
            elevation: 1,
            padding: EdgeInsets.zero,
          ),
        ),
      ],
    );
  }
}

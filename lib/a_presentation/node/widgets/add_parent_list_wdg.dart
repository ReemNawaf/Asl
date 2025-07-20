import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/relation_bloc/child_form/child_form_bloc.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/relation/relation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddParentDropListWidget extends StatelessWidget {
  const AddParentDropListWidget({
    super.key,
    required this.relations,
  });

  final List<Relation?> relations;

  @override
  Widget build(BuildContext context) {
    if (relations.isNotEmpty) {
      final menuItems = relations
          .map((Relation? re) => DropdownMenuItem<UniqueId>(
                value: re!.relationId,
                child: ListParentItem(
                    name: re.partnerNode!.firstName.getOrCrash()),
              ))
          .toList();

      print(
          'Node Parent List: menuItems.length: ${relations.length} |----------');
      return DropdownButton(
        items: menuItems,
        isExpanded: true,
        value: context.read<ChildFormBloc>().state.child.upperFamily,
        onChanged: (value) {
          print('ff $value');

          final re = relations.firstWhere((ree) => ree!.relationId == value)!;

          print('re $re');
          context.read<ChildFormBloc>().add(ChildFormEvent.addParent(
              treeId: re.treeId, upperFamily: re.relationId));
        },
        underline: const SizedBox(),
        icon: const Icon(Icons.expand_more_rounded),
        dropdownColor: kWhitesColor[600],
        style: kBodyMedium,
        elevation: 1,
        padding: EdgeInsets.zero,
      );
    } else {
      return const SizedBox();
    }
  }
}

class ListParentItem extends StatelessWidget {
  final String name;
  const ListParentItem({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: kBodyMedium,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }
}

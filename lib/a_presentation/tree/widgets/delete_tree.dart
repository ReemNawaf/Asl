import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/widgets/app_btn.dart';
import 'package:asl/b_application/tree_bloc/tree_actor/tree_actor_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_watcher/tree_watcher_bloc.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<dynamic> showDeleteTreePanel(BuildContext contextPage,
    {required UniqueId id}) {
  return showDialog(
    context: contextPage,
    builder: (BuildContext dialogContext) {
      return BlocListener<TreeActorBloc, TreeActorState>(
        listener: (context, state) {
          state.map(
              initial: (_) {},
              actionInProgress: (_) {},
              deleteFailure: (_) {},
              deleteSuccess: (_) {
                contextPage
                    .read<TreeWatcherBloc>()
                    .add(const TreeWatcherEvent.getAllTrees());
                Navigator.pop(contextPage);
              });
        },
        child: AlertDialog(
          backgroundColor: kRootColors[700],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
          scrollable: true,
          content: Container(
              alignment: Alignment.topRight,
              padding: const EdgeInsets.all(8.0),
              width: PAN_SM_WIDTH / 2,
              height: PAN_HEIGHT / 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('هل تريد حذف الشجرة؟'),
                  kVSpacer20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BlocBuilder<TreeActorBloc, TreeActorState>(
                        builder: (context, state) {
                          return AppButton(
                              onPressed: () {
                                contextPage
                                    .read<TreeActorBloc>()
                                    .add(TreeActorEvent.deleted(treeId: id));
                              },
                              label: 'نعم، أحذف',
                              fillColor: kRedColors);
                        },
                      ),
                      AppButton(
                        onPressed: () => contextPage
                            .read<TreeActorBloc>()
                            .add(TreeActorEvent.deleted(treeId: id)),
                        label: 'لا، إلغاء',
                        fillColor: kRootColors,
                      )
                    ],
                  )
                ],
              )),
        ),
      );
    },
  );
}

import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/a_shared/ui_helpers.dart';
import 'package:asl/a_presentation/core/widgets/app_btn.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/tree/widgets/new_tree_btn.dart';
import 'package:asl/a_presentation/tree/widgets/root_panel/root_info_panel.dart';
import 'package:asl/b_application/node_bloc/node_watcher/node_watcher_bloc.dart';
import 'package:asl/b_application/share_bloc/share_option/share_option_bloc.dart';
import 'package:asl/b_application/tree_bloc/current_tree/current_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_form/tree_form_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_watcher/tree_watcher_bloc.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class AddNewTree extends StatelessWidget {
  const AddNewTree({super.key, required this.size});

  final Size size;
  @override
  Widget build(BuildContext context) {
    return AppButton(
      label: 'إنشاء شجرة عائلة',
      onPressed: () => showNewTreePanel(context),
      hasIcon: true,
      icon: SvgPicture.asset(
        'assets/icons/root.svg',
      ),
      fillColor: kRootColors[700]!,
      textColor: kRootColors[200]!,
    );
  }
}

Future<dynamic> showNewTreePanel(
  BuildContext contextPage,
) {
  final formKey = GlobalKey<FormState>();
  return showDialog(
    context: contextPage,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        backgroundColor: kRootColors[700],
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
        scrollable: true,
        content: Container(
          alignment: Alignment.topRight,
          padding: const EdgeInsets.all(8.0),
          width: PAN_SM_WIDTH,
          height: 487,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: BlocConsumer<TreeFormBloc, TreeFormState>(
            listener: (ctx, state) async {
              state.saveFailureOrSuccessOption.fold(
                () {},
                (either) => either.fold(
                  (failure) {
                    appSnackBar(
                      contextPage,
                      text: failure.map(
                        // TODO: add localization here
                        unexpected: (_) => 'حدث خطأ غير متوقع',
                        // TODO: add localization here
                        insufficientPermission: (_) => 'لا تملك الصلاحية',
                        // TODO: add localization here
                        unableToUpdate: (_) => 'لا يمكن التحديث',
                      ),
                      type: SnackBarType.error,
                    );
                  },
                  (unit) {
                    // print('in unit tree has to be created');
                    contextPage
                        .read<TreeWatcherBloc>()
                        .add(const TreeWatcherEvent.getAllTrees());

                    //  (1) Update the Tree
                    //  1. Update the current tree
                    contextPage.read<CurrentTreeBloc>().add(
                        CurrentTreeEvent.updateCurrentTree(tree: state.tree));

                    //  2. Update the current nodes
                    contextPage.read<NodeWatcherBloc>().add(
                        NodeWatcherEvent.getTree(
                            treeId: state.tree.treeId,
                            rootId: state.tree.rootId));

                    //  3. Update the share settings
                    contextPage.read<ShareOptionBloc>().add(
                        ShareOptionEvent.initialized(
                            state.tree.shareOption ?? 0));

                    Navigator.pop(dialogContext);

                    appSnackBar(
                      contextPage,
                      text: getTr(contextPage, 'tree_created')!,
                      type: SnackBarType.success,
                    );
                  },
                ),
              );
            },
            builder: (context, state) {
              return Form(
                autovalidateMode: state.showErrorMessages,
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    kVSpacer10,
                    Container(
                      padding: const EdgeInsets.only(right: 28.0),
                      width: 300,
                      child: AppFormField(
                        // TODO: add localization here
                        label: 'اسم الشجرة*',
                        // TODO: add localization here
                        hint: 'شجرة عائلة ...',
                        onSaved: (_) {},
                        initialValue: '',
                        onChanged: (value) => context
                            .read<TreeFormBloc>()
                            .add(TreeFormEvent.changeTreeName(value!.trim())),
                        validator: (_) {
                          return context
                              .read<TreeFormBloc>()
                              .state
                              .tree
                              .treeName
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  empty: (_) =>
                                      // TODO: add localization here
                                      'اسم الشجرة لا يمكن أن يكون فارغًا',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              );
                        },
                        isValid: AutovalidateMode.always !=
                                state.showErrorMessages ||
                            context
                                .read<TreeFormBloc>()
                                .state
                                .tree
                                .treeName
                                .isValid(),
                      ),
                    ),
                    kVSpacer10,
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 42.0),
                      child: Divider(thickness: 1.4, color: kRootColors),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 28.0),
                      child: Text(
                        // TODO: add localization here
                        'معلومات جذر العائلة',
                        style: kBodyLarge.copyWith(
                          color: kRootColors[200]!,
                        ),
                      ),
                    ),
                    RootInfoPanel(
                      color: kRootColors,
                      height: 0.2,
                      ctx: context,
                      showErrorMessages: state.showErrorMessages,
                    ),
                    kVSpacer10,
                    NewTreeButton(isLoading: state.isSaving)
                  ],
                ),
              );
            },
          ),
        ),
      );
    },
  );
}

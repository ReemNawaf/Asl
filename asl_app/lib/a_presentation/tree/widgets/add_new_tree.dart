import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/a_shared/ui_helpers.dart';
import 'package:asl/a_presentation/core/widgets/app_btn.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/tree/widgets/new_tree_btn.dart';
import 'package:asl/a_presentation/tree/widgets/root_panel/root_info_panel.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_form/tree_form_bloc.dart';
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
      return BlocProvider(
        create: (context) => TreeFormBloc(),
        child: AlertDialog(
          backgroundColor: kRootColors[700],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
          scrollable: true,
          content: Container(
            alignment: Alignment.topRight,
            padding: const EdgeInsets.all(8.0),
            width: PAN_SM_WIDTH,
            height: 497,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: BlocConsumer<TreeFormBloc, TreeFormState>(
              listener: (ctx, state) async {
                state.saveFailureOrSuccessOption.fold(
                  () {},
                  (either) => either.fold(
                    (failure) {},
                    (unit) {
                      // send created tree to LocalTreeBloc
                      contextPage.read<LocalTreeBloc>().add(
                          LocalTreeEvent.createTree(
                              root: unit, tree: state.tree));

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
                          label: getTr(context, 'required_tree_name')!,
                          hint: getTr(context, 'family_tree_name_hint')!,
                          onSaved: (_) {},
                          initialValue: '',
                          onChanged: (value) => context
                              .read<TreeFormBloc>()
                              .add(TreeFormEvent.changeTreeName(value!.trim())),
                          validator: (_) => context
                              .read<TreeFormBloc>()
                              .state
                              .tree
                              .treeName
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  empty: (_) =>
                                      getTr(context, 'name_cannot_be_empty'),
                                  exceedingLength: (_) =>
                                      getTr(context, 'name_too_long'),
                                  shortName: (_) =>
                                      getTr(context, 'name_too_short'),
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
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
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(thickness: 1.2, color: kRootColors),
                      ),
                      kVSpacer10,
                      Padding(
                        padding: const EdgeInsets.only(right: 28.0),
                        child: Text(
                          getTr(context, 'root_data_info')!,
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
        ),
      );
    },
  );
}

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/core/widgets/app_btn.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/a_presentation/tree/widgets/new_tree_btn.dart';
import 'package:asl/a_presentation/tree/widgets/root_panel/root_info_panel.dart';
import 'package:asl/b_application/tree/tree_form/tree_form_bloc.dart';
import 'package:asl/b_application/user/user_watcher_bloc.dart';
import 'package:asl/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class AddNewTree extends StatelessWidget {
  const AddNewTree({super.key, required this.size});

  final Size size;
  @override
  Widget build(BuildContext context) {
    return AppButton(
      label: 'أنشئ شجرة عائلة',
      onPressed: () => showNewTreePanel(context, size),
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
  Size size,
) {
  final formKey = GlobalKey<FormState>();
  return showDialog(
    context: contextPage,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: kRootColors[700],
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
        scrollable: true,
        content: Container(
          alignment: Alignment.topRight,
          padding: const EdgeInsets.all(8.0),
          width: size.width * 0.48,
          height: size.height * 0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: BlocProvider(
            create: (cttx) => getIt<TreeFormBloc>(),
            child: BlocConsumer<TreeFormBloc, TreeFormState>(
              listener: (ctx, state) async {
                state.saveFailureOrSuccessOption.fold(
                  () {},
                  (either) => either.fold(
                    (failure) {
                      FlushbarHelper.createError(
                        message: failure.map(
                          unexpected: (_) => 'حدث خطأ غير متوقع',
                          insufficientPermission: (_) => 'لا تملك الصلاحية',
                          unableToUpdate: (_) => 'لا يمكن التحديث',
                        ),
                      ).show(contextPage);
                    },
                    (_) {
                      contextPage
                          .read<UserWatcherBloc>()
                          .add(const UserWatcherEvent.getStarted());

                      Navigator.pop(contextPage);
                    },
                  ),
                );
              },
              builder: (context, state) {
                return BlocProvider<UserWatcherBloc>(
                  create: (context) => getIt<UserWatcherBloc>()
                    ..add(const UserWatcherEvent.getStarted()),
                  child: Form(
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
                            label: 'اسم الشجرة',
                            hint: 'شجرة عائلة ...',
                            onSaved: (_) {},
                            initialValue: '',
                            onChanged: (value) => context
                                .read<TreeFormBloc>()
                                .add(TreeFormEvent.changeTreeName(
                                    value!.trim())),
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
                            'معلومات جذر العائلة',
                            style: kBodyLarge.copyWith(
                              color: kRootColors[200]!,
                            ),
                          ),
                        ),
                        RootInfoPanel(
                          size: size,
                          color: kRootColors,
                          height: 0.18,
                          ctx: context,
                          showErrorMessages: state.showErrorMessages,
                        ),
                        kVSpacer20,
                        NewTreeButton(
                            screenSize: size, isLoading: state.isSaving)
                      ],
                    ),
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

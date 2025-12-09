import 'package:asl/a_presentation/a_shared/ui_helpers.dart';
import 'package:asl/a_presentation/auth/widgets/action_btn.dart';
import 'package:asl/a_presentation/auth/widgets/email_field.dart';
import 'package:asl/a_presentation/auth/widgets/helper.dart';
import 'package:asl/a_presentation/auth/widgets/password_field.dart';
import 'package:asl/a_presentation/core/widgets/logo_slogan_wdg.dart';
import 'package:asl/a_presentation/routes/app_router.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/auth_bloc/auth_bloc.dart';
import 'package:asl/b_application/auth_bloc/sign_in_form/bloc/sign_in_form_bloc.dart';

class SignInForm extends StatefulWidget {
  const SignInForm(this.screenSize, {super.key});
  final Size screenSize;

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _passwordController = TextEditingController();

  AuthMode _authMode = AuthMode.signin;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    void switchAuthMode() {
      setState(() {
        if (_authMode == AuthMode.signin) {
          _authMode = AuthMode.signup;
        } else {
          _authMode = AuthMode.signin;
        }
      });
    }

    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) async {
        state.authFailureOrSuccessOption.fold(
          // when the user don't do anything
          () {},
          (either) => either.fold(
            // when there is failure
            (failure) {
              appSnackBar(
                context,
                text: failure.map(
                  cancelledByUser: (_) => getTr(context, 'cancel')!,
                  emailAlreadyInUse: (_) =>
                      getTr(context, 'email_already_in_use')!,
                  invalidEmailAndPasswordCombination: (_) =>
                      getTr(context, 'email_or_password_is_not_correct')!,
                  serverError: (_) => getTr(context, 'something_went_wrong')!,
                  accountDoesExist: (_) => getTr(context,
                      'this_account_is_already_registered_please_log_in')!,
                  accountDoesNotExist: (_) => getTr(
                      context, 'account_is_not_registered_please_sign_up')!,
                ),
                type: SnackBarType.error,
              );
            },
            // when it's succeeded
            (_) {
              context.router.push(const HomeRoute());

              // to update the state of auth
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
      builder: (context, state) {
        final size = MediaQuery.of(context).size;
        return SizedBox(
          width: size.width * 0.25,
          child: Form(
            autovalidateMode: state.showErrorMessage,
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const LogoSloganWidget(),
                EmailField(
                  emailFocusNode: _emailFocusNode,
                  passwordFocusNode: _passwordFocusNode,
                ),
                kVSpacer10,
                PasswordField(
                  passwordController: _passwordController,
                  passwordFocusNode: _passwordFocusNode,
                  authMode: _authMode,
                ),
                kVSpacer10,
                ActionButton(
                  isLoading: state.isSubmitting,
                  authMode: _authMode,
                  screenSize: screenSize,
                ),
                kVSpacer30,
                signInWithGoogleBtn(context, () {
                  context.read<SignInFormBloc>().add(
                      SignInFormEvent.signInWithEmailGooglePressed(_authMode));
                }),
                kVSpacer20,
                GestureDetector(
                  onTap: () => switchAuthMode(),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: _authMode == AuthMode.signin
                          ? '${getTr(context, 'you_dont_have_an_account')}  '
                          : '${getTr(context, 'you_have_an_account')}  ',
                      style: kBodyMedium,
                      children: [
                        TextSpan(
                          text: _authMode == AuthMode.signin
                              ? getTr(context, 'create_new_account')
                              : getTr(context, 'sign_in'),
                          style: kBodyMedium.copyWith(
                            color: kRootColors,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

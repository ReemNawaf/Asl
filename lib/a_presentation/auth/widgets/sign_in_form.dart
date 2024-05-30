import 'package:another_flushbar/flushbar_helper.dart';
import 'package:asl/a_presentation/auth/widgets/action_btn.dart';
import 'package:asl/a_presentation/auth/widgets/email_field.dart';
import 'package:asl/a_presentation/auth/widgets/helper.dart';
import 'package:asl/a_presentation/auth/widgets/password_field.dart';
import 'package:asl/routes/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/auth/auth_bloc.dart';
import 'package:asl/b_application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:asl/localization/localization_constants.dart';

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
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => getTr(context, 'cancelled')!,
                  emailAlreadyInUse: (_) =>
                      getTr(context, 'email_already_in_use')!,
                  invalidEmailAndPasswordCombination: (_) =>
                      getTr(context, 'invalid_email_and_password_combination')!,
                  serverError: (_) => getTr(context, 'server_error')!,
                ),
              ).show(context).then((value) => context
                  .read<SignInFormBloc>()
                  .add(const SignInFormEvent.reLogin()));
            },
            // when it's succeeded
            (_) {
              context.router.push(const GoalsRoute());

              // to update the state of auth
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            kVSpacer40,
            Form(
              autovalidateMode: state.showErrorMessage,
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    children: [
                      EmailField(
                          emailFocusNode: _emailFocusNode,
                          passwordFocusNode: _passwordFocusNode),
                      kVSpacer20,
                      PasswordField(
                        passwordController: _passwordController,
                        passwordFocusNode: _passwordFocusNode,
                        authMode: _authMode,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            kVSpacer10,
            if (_authMode == AuthMode.signin)
              GestureDetector(
                onTap: () {},
                child: Text(
                  getTr(context, 'forgot_password')!,
                  textAlign: TextAlign.end,
                  style: kFootnoteStyle,
                ),
              ),
            kVSpacer20,
            ActionButton(
                isLoading: state.isSubmitting,
                authMode: _authMode,
                screenSize: screenSize),
            kVSpacer20,
            signInWithGoogleBtn(context, () {
              context
                  .read<SignInFormBloc>()
                  .add(const SignInFormEvent.signInWithEmailGooglePressed());
            }),
            kVSpacer20,
            GestureDetector(
              onTap: () => switchAuthMode(),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: _authMode == AuthMode.signin
                      ? 'ما عندك حساب؟'
                      : 'عندك حساب؟',
                  style: kBodyMedium,
                  children: [
                    TextSpan(
                      text: _authMode == AuthMode.signin
                          ? ' أنشئ حساب'
                          : ' سجل دخولك',
                      style: kBodyMedium.copyWith(
                        color: kBlacksColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:asl/a_presentation/auth/widgets/action_btn.dart';
import 'package:asl/a_presentation/auth/widgets/email_field.dart';
import 'package:asl/a_presentation/auth/widgets/helper.dart';
import 'package:asl/a_presentation/auth/widgets/password_field.dart';
import 'package:asl/a_presentation/routes/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/auth/auth_bloc.dart';
import 'package:asl/b_application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';

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
                  cancelledByUser: (_) => 'إلغاء',
                  emailAlreadyInUse: (_) => 'البريد الإلكتروني مستخدم بالفعل',
                  invalidEmailAndPasswordCombination: (_) =>
                      'البريد الإلكتروني أو الرقم السري غير صحيح',
                  serverError: (_) => 'حدث خطأ ما',
                ),
              ).show(context);
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
                Image.asset('assets/images/logo.png', height: 160),
                EmailField(
                    emailFocusNode: _emailFocusNode,
                    passwordFocusNode: _passwordFocusNode),
                PasswordField(
                  passwordController: _passwordController,
                  passwordFocusNode: _passwordFocusNode,
                  authMode: _authMode,
                ),
                ActionButton(
                  isLoading: state.isSubmitting,
                  authMode: _authMode,
                  screenSize: screenSize,
                ),
                kVSpacer30,
                signInWithGoogleBtn(context, () {
                  context.read<SignInFormBloc>().add(
                      const SignInFormEvent.signInWithEmailGooglePressed());
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

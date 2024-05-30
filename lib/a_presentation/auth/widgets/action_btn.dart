import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/core/widgets/primary_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:asl/b_application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required AuthMode authMode,
    required this.screenSize,
    required this.isLoading,
  }) : _authMode = authMode;

  final AuthMode _authMode;
  final Size screenSize;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
        screenSize: screenSize,
        onTap: () {
          _authMode == AuthMode.signin
              ? context.read<SignInFormBloc>().add(
                  const SignInFormEvent.signInWithEmailAndPasswordPressed())
              : context.read<SignInFormBloc>().add(
                  const SignInFormEvent.registerWithEmailAndPasswordPressed());
          FocusScope.of(context).unfocus();
        },
        isLoading: context.read<SignInFormBloc>().state.isSubmitting,
        label: _authMode == AuthMode.signin ? 'تسجيل الدخول' : 'تسجيل');
  }
}

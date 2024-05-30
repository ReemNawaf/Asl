import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:asl/localization/localization_constants.dart';

class PasswordField extends StatelessWidget {
  const PasswordField(
      {super.key,
      required this.passwordFocusNode,
      required this.passwordController,
      required this.authMode});

  final TextEditingController passwordController;
  final FocusNode passwordFocusNode;
  final AuthMode authMode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          cursorColor: kBlacksColor,
          cursorHeight: 20.0,
          autocorrect: false,
          enableSuggestions: false,
          key: const ValueKey('password'),
          obscureText: true,
          style: kHeadLineStyle.copyWith(
            fontWeight: FontWeight.w600,
          ),
          decoration: kLoginInputDecoration(
            icon: const Icon(
              Icons.lock,
              size: 20.0,
            ),
            hintText: getTr(context, 'password'),
          ),
          onChanged: (value) => context
              .read<SignInFormBloc>()
              .add(SignInFormEvent.passwordChanged(value.trim())),
          validator: (_) =>
              context.read<SignInFormBloc>().state.password.value.fold(
                    (f) => f.maybeMap(
                      shortPassword: (_) => getTr(context, 'short_pwd'),
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
          controller: passwordController,
          focusNode: passwordFocusNode,
        ),
        //  CONFIRM PASSWORD FIELD
        if (authMode == AuthMode.signup) ...[
          kVSpacer20,
          TextFormField(
            cursorHeight: 20.0,
            key: const ValueKey('password_confirm'),
            enabled: authMode == AuthMode.signup,
            cursorColor: kBlacksColor,
            obscureText: true,
            decoration: kLoginInputDecoration(
              icon: const Icon(
                Icons.lock,
                size: 20.0,
              ),
              hintText: getTr(context, 'confirm_password'),
            ),
            validator: (value) {
              if (value != passwordController.text) {
                return getTr(context, 'passwords_do_not_match');
              }
              return null;
            },
          ),
        ]
      ],
    );
  }
}

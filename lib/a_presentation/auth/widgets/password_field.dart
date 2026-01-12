import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/b_application/auth_bloc/sign_in_form/sign_in_form_bloc.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
    required this.passwordFocusNode,
    required this.passwordController,
    required this.authMode,
  });

  final TextEditingController passwordController;
  final FocusNode passwordFocusNode;
  final AuthMode authMode;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AppFormField(
          label: getTr(context, 'password')!,
          hint: '**************',
          color: kRootColors[700],
          onChanged: (value) => context
              .read<SignInFormBloc>()
              .add(SignInFormEvent.passwordChanged(value!.trim())),
          validator: (_) =>
              context.read<SignInFormBloc>().state.password.value.fold(
                    (f) => f.maybeMap(
                      shortPassword: (_) => getTr(context, 'shortPassword')!,
                      empty: (_) => getTr(context, 'password_empty')!,
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
          controller: passwordController,
          focusNode: passwordFocusNode,
          fieldType: FieldType.password,
          isValid: false,
        ),

        //  CONFIRM PASSWORD FIELD
        if (authMode == AuthMode.signup)
          AppFormField(
            label: getTr(context, 'password')!,
            hint: '**************',
            isValid: false,
            color: kRootColors[700],
            onSaved: (_) => {},
            validator: (value) {
              if (value != passwordController.text) {
                return getTr(context, 'not_identical_password')!;
              }
              return null;
            },
            fieldType: FieldType.password,
          ),
      ],
    );
  }
}

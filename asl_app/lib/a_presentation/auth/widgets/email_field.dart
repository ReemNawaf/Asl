import 'package:asl/a_presentation/core/widgets/app_form_field.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/b_application/auth_bloc/sign_in_form/bloc/sign_in_form_bloc.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
    required this.emailFocusNode,
    required this.passwordFocusNode,
  });

  final FocusNode passwordFocusNode;

  final FocusNode emailFocusNode;

  @override
  Widget build(BuildContext context) {
    return AppFormField(
      label: getTr(context, 'email')!,
      hint: 'example@example.com',
      isArabic: false,
      initialValue: '',
      color: kRootColors[700],
      onChanged: (value) => context
          .read<SignInFormBloc>()
          .add(SignInFormEvent.emailChanged(value!.trim())),
      validator: (_) {
        // context.read<SignInFormBloc>().state.emailAddress.value
        return context.read<SignInFormBloc>().state.emailAddress.value.fold(
              (f) => f.maybeMap(
                empty: (_) => getTr(context, 'email_cannot_be_empty'),
                invalidEmail: (_) => getTr(context, 'invalid_email'),
                orElse: () => null,
              ),
              (_) => null,
            );
      },
      isValid: !context.read<SignInFormBloc>().state.isValidated ||
          context.read<SignInFormBloc>().state.emailAddress.isValid(),

      // for the email to not be null, when the user hit 'Forgot Password'
      // before onSave for triggered
      onSaved: (userInput) {},
      focusNode: emailFocusNode,
      onFieldSubmitted: (_) =>
          FocusScope.of(context).requestFocus(passwordFocusNode),
    );
  }
}

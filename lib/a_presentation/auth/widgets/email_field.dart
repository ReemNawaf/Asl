import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:asl/localization/localization_constants.dart';

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
    return TextFormField(
      key: const ValueKey('email'),
      cursorColor: kBlacksColor,
      cursorHeight: 20.0,
      autocorrect: false,
      enableSuggestions: false,
      textCapitalization: TextCapitalization.sentences,
      keyboardType: TextInputType.emailAddress,

      style: kHeadLineStyle.copyWith(
        fontWeight: FontWeight.w600,
      ),
      decoration: kLoginInputDecoration(
        icon: const Icon(
          Icons.message,
          size: 20.0,
        ),
        hintText: getTr(context, 'email'),
      ),

      textInputAction: TextInputAction.next,
      onChanged: (value) => context
          .read<SignInFormBloc>()
          .add(SignInFormEvent.emailChanged(value.trim())),
      validator: (_) =>
          context.read<SignInFormBloc>().state.emailAddress.value.fold(
                (f) => f.maybeMap(
                  invalidEmail: (_) => getTr(context, 'invalid_email'),
                  orElse: () => null,
                ),
                (_) => null,
              ),

      // for the email to not be null, when the user hit 'Forgot Password'
      // before onSave for triggered
      onSaved: (userInput) {},
      focusNode: emailFocusNode,
      onFieldSubmitted: (_) =>
          FocusScope.of(context).requestFocus(passwordFocusNode),
    );
  }
}

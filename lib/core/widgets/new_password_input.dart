import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

enum NewPasswordValidationError { empty, mustNotMatchOldPassword }

extension NewPasswordValidationErrorX on NewPasswordValidationError {
  String message(BuildContext context) {
    switch (this) {
      case NewPasswordValidationError.empty:
        return context.loc.required;
      case NewPasswordValidationError.mustNotMatchOldPassword:
        return context.loc.newPasswordMustBeDifferent;
    }
  }
}

class NewPassword extends FormzInput<String, NewPasswordValidationError> {
  final String currentPassword;

  const NewPassword.pure(this.currentPassword) : super.pure('');
  const NewPassword.dirty(this.currentPassword, [super.value = ''])
      : super.dirty();
  const NewPassword.pureWith(this.currentPassword, super.value) : super.pure();

  @override
  NewPasswordValidationError? validator(String value) {
    if (value.isEmpty) return NewPasswordValidationError.empty;
    if (value == currentPassword) {
      return NewPasswordValidationError.mustNotMatchOldPassword;
    }
    return null;
  }
}

/// Password input field
///
/// The password input field is a text field.
///
/// The password field has a [TextInputType.visiblePassword] and [TextInputAction] of done.
///
/// If the password is not valid, the error message will be shown below the input field.
///
/// This field is required.
///
class NewPasswordInput extends StatefulWidget {
  final NewPassword password;

  final TextInputAction textInputAction;

  final void Function(String)? onChanged;

  final void Function(String)? onSubmitted;

  const NewPasswordInput({
    super.key,
    required this.password,
    this.textInputAction = TextInputAction.done,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  NewPasswordInputState createState() => NewPasswordInputState();
}

class NewPasswordInputState extends State<NewPasswordInput> {
  // Initialize the controller and the obscure text
  late bool _obscureText;
  // Initialize text controller
  late TextEditingController _controller;

  @override
  void initState() {
    // Initialize the controller and the obscure text
    _obscureText = true;
    // Initialize text controller
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Change the obscure text of the password field
  void _obscureToggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      // Initialize the controller with the password value from the state
      controller: _controller..text = widget.password.value,
      // Update state
      onChanged: widget.onChanged,
      // Submit the form when the user presses the done button, start sign in with credentials
      onSubmitted: widget.onSubmitted,

      obscureText: _obscureText,
      textInputAction: widget.textInputAction,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: context.loc.newPassword,
        hintText: context.loc.newPasswordHint,
        suffixIcon: InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: _obscureToggle,
          child: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
            color: context.theme.colorScheme.primary,
          ),
        ),
        helperText: '',
        // Display validation error
        errorText: widget.password.displayError?.message(context),
      ),
    );
  }
}

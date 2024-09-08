import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

enum ConfirmNewPasswordValidationError { empty, mustMatchNewPassword }

extension ConfirmNewPasswordValidationErrorX
    on ConfirmNewPasswordValidationError {
  String message(BuildContext context) {
    switch (this) {
      case ConfirmNewPasswordValidationError.empty:
        return context.loc.required;
      case ConfirmNewPasswordValidationError.mustMatchNewPassword:
        return context.loc.newPasswordMustBeDifferent;
    }
  }
}

class ConfirmNewPassword
    extends FormzInput<String, ConfirmNewPasswordValidationError> {
  final String newPassword;

  const ConfirmNewPassword.pure(this.newPassword) : super.pure('');
  const ConfirmNewPassword.dirty(this.newPassword, [super.value = ''])
      : super.dirty();
  const ConfirmNewPassword.pureWith(this.newPassword, super.value)
      : super.pure();

  @override
  ConfirmNewPasswordValidationError? validator(String value) {
    if (value.isEmpty) return ConfirmNewPasswordValidationError.empty;
    if (value != newPassword) {
      return ConfirmNewPasswordValidationError.mustMatchNewPassword;
    }
    return null;
  }
}

/// Confirm Password input field
///
/// The password input field is a text field.
///
/// The password field has a [TextInputType.visiblePassword] and [TextInputAction] of done.
///
/// If the password is not valid, the error message will be shown below the input field.
///
/// This field is required.
///
class ConfirmNewPasswordInput extends StatefulWidget {
  final ConfirmNewPassword password;

  final TextInputAction textInputAction;

  final void Function(String)? onChanged;

  final void Function(String)? onSubmitted;

  const ConfirmNewPasswordInput({
    super.key,
    required this.password,
    this.textInputAction = TextInputAction.done,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  ConfirmNewPasswordInputState createState() => ConfirmNewPasswordInputState();
}

class ConfirmNewPasswordInputState extends State<ConfirmNewPasswordInput> {
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

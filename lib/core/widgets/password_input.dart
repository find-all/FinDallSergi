import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

enum PasswordValidationError { empty }

extension PasswordValidationErrorX on PasswordValidationError {
  String message(BuildContext context) {
    switch (this) {
      case PasswordValidationError.empty:
        return context.loc.required;
    }
  }
}

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([super.value = '']) : super.dirty();
  const Password.pureWith(super.value) : super.pure();

  @override
  PasswordValidationError? validator(String value) {
    if (value.isEmpty) return PasswordValidationError.empty;
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
class PasswordInput extends StatefulWidget {
  final Password password;

  final TextInputAction textInputAction;

  final void Function(String)? onChanged;

  final void Function(String)? onSubmitted;

  const PasswordInput({
    super.key,
    required this.password,
    this.textInputAction = TextInputAction.done,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  PasswordInputState createState() => PasswordInputState();
}

class PasswordInputState extends State<PasswordInput> {
  // Initialize the controller and the obscure text
  late bool _obscureText;
  // Initialize text controller
  late TextEditingController _controller;

  @override
  void initState() {
    // Initialize the controller and the obscure text
    _obscureText = true;
    // Initialize text controller
    _controller = TextEditingController(text: widget.password.value);
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
      controller: _controller,
      // Update state
      onChanged: widget.onChanged,
      // Submit the form when the user presses the done button, start sign in with credentials
      onSubmitted: widget.onSubmitted,

      obscureText: _obscureText,
      textInputAction: widget.textInputAction,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: context.loc.password,
        suffixIcon: InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: _obscureToggle,
          child: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
            color: context.theme.colorScheme.primary,
          ),
        ),
        helperText: '',
        hintText: context.loc.passwordHint,
        // Display validation error
        errorText: widget.password.displayError?.message(context),
      ),
    );
  }
}

import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

enum EmailValidationError { empty, invalid }

extension EmailValidationErrorX on EmailValidationError {
  String message(BuildContext context) {
    switch (this) {
      case EmailValidationError.empty:
        return context.loc.required;
      case EmailValidationError.invalid:
        return context.loc.errorInvalidEmail;
      default:
        return context.loc.required;
    }
  }
}

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');
  const Email.dirty([super.value = '']) : super.dirty();
  const Email.pureWith(super.value) : super.pure();

  @override
  EmailValidationError? validator(String value) {
    if (value.isEmpty) return EmailValidationError.empty;

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) return EmailValidationError.invalid;

    return null;
  }
}

/// Email input field
///
/// The email input field is a text field.
///
/// The email field has a [TextInputType.emailAddress] and [TextInputAction] of next.
///
/// If the email is not valid, the error message will be shown below the input field.
///
/// This field is required and need to a valid email address.
///

class EmailInput extends StatefulWidget {
  final Email email;

  final TextInputAction textInputAction;

  final void Function(String)? onChanged;

  final void Function(String)? onSubmitted;

  const EmailInput({
    super.key,
    required this.email,
    this.textInputAction = TextInputAction.next,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  EmailInputState createState() => EmailInputState();
}

class EmailInputState extends State<EmailInput> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.email.value);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      // Initialize the controller with the email value from the state
      controller: _controller,
      textInputAction: widget.textInputAction,
      keyboardType: TextInputType.emailAddress,

      // Update state
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,
      decoration: InputDecoration(
        labelText: context.loc.email,
        hintText: context.loc.emailHint,
        helperText: '',
        // Display validation error
        errorText: widget.email.displayError?.message(context),
      ),
    );
  }
}

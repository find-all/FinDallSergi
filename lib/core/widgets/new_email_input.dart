import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

enum NewEmailValidationError { empty, invalid, mustNotMatch }

extension NewEmailValidationErrorX on NewEmailValidationError {
  String message(BuildContext context) {
    switch (this) {
      case NewEmailValidationError.empty:
        return context.loc.required;
      case NewEmailValidationError.invalid:
        return context.loc.errorInvalidEmail;
      case NewEmailValidationError.mustNotMatch:
        return context.loc.newEmailMustBeDifferent;
    }
  }
}

class NewEmail extends FormzInput<String, NewEmailValidationError> {
  final String currentEmail;

  const NewEmail.pure(this.currentEmail) : super.pure('');
  const NewEmail.dirty(this.currentEmail, [super.value = '']) : super.dirty();
  const NewEmail.pureWith(this.currentEmail, super.value) : super.pure();

  @override
  NewEmailValidationError? validator(String value) {
    if (value.isEmpty) return NewEmailValidationError.empty;

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) return NewEmailValidationError.invalid;

    if (value == currentEmail) return NewEmailValidationError.mustNotMatch;

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

class NewEmailInput extends StatefulWidget {
  final NewEmail email;

  final TextInputAction textInputAction;

  final void Function(String)? onChanged;

  final void Function(String)? onSubmitted;

  const NewEmailInput({
    super.key,
    required this.email,
    this.textInputAction = TextInputAction.next,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  NewEmailInputState createState() => NewEmailInputState();
}

class NewEmailInputState extends State<NewEmailInput> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
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
      controller: _controller..text = widget.email.value,
      textInputAction: widget.textInputAction,
      keyboardType: TextInputType.emailAddress,

      // Update state
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,
      decoration: InputDecoration(
        labelText: context.loc.newEmail,
        hintText: context.loc.newEmail,
        helperText: '',
        // Display validation error
        errorText: widget.email.displayError?.message(context),
      ),
    );
  }
}

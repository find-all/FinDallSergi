import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

/// Enum for name validation errors.
enum NameValidationError { empty, minLenght }

/// Extension on [NameValidationError] to provide error messages.
extension NameValidationErrorX on NameValidationError {
  /// Returns a localized error message based on the validation error.
  String message(BuildContext context) {
    switch (this) {
      case NameValidationError.empty:
        return context.loc.required;
      case NameValidationError.minLenght:
        return context.loc.minLength(2);
    }
  }
}

/// [Name] is a [FormzInput] for the name field.
class Name extends FormzInput<String, NameValidationError> {
  const Name.pure() : super.pure('');
  const Name.dirty([super.value = '']) : super.dirty();
  const Name.pureWith(super.value) : super.pure();

  /// Validates the name.
  @override
  NameValidationError? validator(String value) {
    if (value.isEmpty) return NameValidationError.empty;
    if (value.length < 2) return NameValidationError.minLenght;
    return null;
  }
}

/// Name input field
///
/// The name input field is a text field
///
/// [name] is the name field of the form. Use [Name] to validate the name.
///
/// [textInputAction] is the action button on the keyboard. Default is [TextInputAction.next].
///
/// [onChanged] is a callback function that is called when the text field changes.
///
/// [onSubmitted] is a callback function that is called when the text field is submitted.
///
class NameInput extends StatefulWidget {
  final Name name;

  final TextInputAction textInputAction;

  final void Function(String)? onChanged;

  final void Function(String)? onSubmitted;

  const NameInput({
    super.key,
    required this.name,
    this.textInputAction = TextInputAction.next,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  NameInputState createState() => NameInputState();
}

class NameInputState extends State<NameInput> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.name.value);
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
      // Initialize the controller with the name value from the state
      controller: _controller..text,
      textInputAction: widget.textInputAction,
      keyboardType: TextInputType.text,
      // Update state
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,
      decoration: InputDecoration(
        labelText: context.loc.name,
        hintText: context.loc.nameHint,
        helperText: '',
        // Display validation error
        errorText: widget.name.displayError?.message(context),
      ),
    );
  }
}

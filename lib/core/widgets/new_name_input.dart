import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

/// Enum for name validation errors.
enum NewNameValidationError { empty, minLenght, mustNotMatch }

/// Extension on [NewNameValidationError] to provide error messages.
extension NewNameValidationErrorX on NewNameValidationError {
  /// Returns a localized error message based on the validation error.
  String message(BuildContext context) {
    switch (this) {
      case NewNameValidationError.empty:
        return context.loc.required;
      case NewNameValidationError.minLenght:
        return context.loc.minLength(2);
      case NewNameValidationError.mustNotMatch:
        return context.loc.newNameMustBeDifferent;
    }
  }
}

/// [NewName] is a [FormzInput] for the name field.
class NewName extends FormzInput<String, NewNameValidationError> {
  final String oldName;

  const NewName.pure(this.oldName) : super.pure('');
  const NewName.dirty(this.oldName, [super.value = '']) : super.dirty();
  const NewName.pureWith(this.oldName, super.value) : super.pure();

  /// Validates the name.
  @override
  NewNameValidationError? validator(String value) {
    if (value.isEmpty) return NewNameValidationError.empty;
    if (value.length < 2) return NewNameValidationError.minLenght;
    if (value == oldName) return NewNameValidationError.mustNotMatch;
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
class NewNameInput extends StatefulWidget {
  final NewName name;

  final TextInputAction textInputAction;

  final void Function(String)? onChanged;

  final void Function(String)? onSubmitted;

  const NewNameInput({
    super.key,
    required this.name,
    this.textInputAction = TextInputAction.next,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  NewNameInputState createState() => NewNameInputState();
}

class NewNameInputState extends State<NewNameInput> {
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
      // Initialize the controller with the name value from the state
      controller: _controller..text = widget.name.value,
      textInputAction: widget.textInputAction,
      keyboardType: TextInputType.text,
      // Update state
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,
      decoration: InputDecoration(
        labelText: context.loc.newName,
        hintText: context.loc.newName,
        helperText: '',
        // Display validation error
        errorText: widget.name.displayError?.message(context),
      ),
    );
  }
}

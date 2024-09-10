import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:formz/formz.dart';
import 'package:pinput/pinput.dart';

/// Enum for Code validation errors.
enum CodeValidationError { empty, minLenght, invalid }

/// Extension on [CodeValidationError] to provide error messages.
extension CodeValidationErrorX on CodeValidationError {
  /// Returns a localized error message based on the validation error.
  String message(BuildContext context) {
    switch (this) {
      case CodeValidationError.empty:
        return context.loc.required;
      case CodeValidationError.minLenght:
        return context.loc.minLength(6);
      case CodeValidationError.invalid:
        return context.loc.invalidActivationCodeFailure;
    }
  }
}

/// [Code] is a [FormzInput] for the Code field.
class Code extends FormzInput<String, CodeValidationError> {
  const Code.pure() : super.pure('');
  const Code.dirty([super.value = '']) : super.dirty();
  const Code.pureWith(super.value) : super.pure();

  /// Validates the Code.
  @override
  CodeValidationError? validator(String value) {
    if (value.isEmpty) return CodeValidationError.empty;
    if (value.length < 6) return CodeValidationError.minLenght;
    return null;
  }
}

/// Code input field
///
/// The Code input field is a text field
///
/// [Code] is the Code field of the form. Use [Code] to validate the Code.
///
/// [textInputAction] is the action button on the keyboard. Default is [TextInputAction.next].
///
/// [onChanged] is a callback function that is called when the text field changes.
///
/// [onSubmitted] is a callback function that is called when the text field is submitted.
///
class CodeInput extends StatefulWidget {
  final Code code;

  final TextInputAction textInputAction;

  final void Function(String)? onChanged;

  final void Function(String)? onSubmitted;

  const CodeInput({
    super.key,
    required this.code,
    this.textInputAction = TextInputAction.next,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  CodeInputState createState() => CodeInputState();
}

class CodeInputState extends State<CodeInput> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.code.value);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Pinput(
      controller: _controller,
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,
      errorText: widget.code.displayError?.message(context),
      keyboardType: TextInputType.number,
      defaultPinTheme: PinTheme(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: context.colorScheme.primary,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
          shape: BoxShape.rectangle,
        ),
        height: 60,
        width: 50,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        constraints: const BoxConstraints(
          maxWidth: 200,
          maxHeight: 60,
        ),
        textStyle: context.textTheme.bodyLarge?.copyWith(
          color: context.colorScheme.primary,
        ),
      ),
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      length: 6,
      textInputAction: widget.textInputAction,
    );
  }
}

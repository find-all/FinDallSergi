import 'package:fin_dall/core/widgets/email_input.dart';

/// The state for the forget password form.
class ForgetPasswordFormState {
  /// The email field.
  final Email email;

  /// Whether the form is valid.
  final bool isValid;

  /// Creates a `ForgetPasswordFormState`.
  const ForgetPasswordFormState({
    this.email = const Email.pure(),
    this.isValid = false,
  });

  /// Copies the `ForgetPasswordFormState` with new values.
  ///
  /// Example:
  /// ```dart
  /// final newState = state.copyWith(email: Email.dirty('test@example.com'));
  /// ```
  ForgetPasswordFormState copyWith({
    Email? email,
    bool? isValid,
  }) {
    return ForgetPasswordFormState(
      email: email ?? this.email,
      isValid: isValid ?? this.isValid,
    );
  }
}

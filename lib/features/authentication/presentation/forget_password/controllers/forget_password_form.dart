import 'package:fin_dall/core/widgets/email_input.dart';
import 'package:formz/formz.dart';
// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'forget_password_form.freezed.dart';
part 'forget_password_form.g.dart';

@freezed
class ForgetPasswordFormState with _$ForgetPasswordFormState {
  const factory ForgetPasswordFormState({
    /// The email field.
    @Default(Email.pure()) Email email,

    /// Whether the form is valid.
    @Default(false) bool isValid,
  }) = _ForgetPasswordFormState;
}

@riverpod
class ForgetPasswordFormController extends _$ForgetPasswordFormController {
  @override
  ForgetPasswordFormState build() {
    return const ForgetPasswordFormState();
  }

  /// Changes the email.
  ///
  /// The [email] argument must not be null.
  void emailChanged(String email) {
    final newEmail = Email.dirty(email);
    final isValid = Formz.validate([newEmail]);
    state = state.copyWith(
      email: newEmail,
      isValid: isValid,
    );
  }

  /// Resets the form.
  void resetForm() {
    state = const ForgetPasswordFormState();
  }
}

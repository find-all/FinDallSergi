import 'package:fin_dall/core/widgets/email_input.dart';
import 'package:fin_dall/core/widgets/password_input.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in_form_controller.freezed.dart';
part 'sign_in_form_controller.g.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(false) bool isValid,
  }) = _SignInFormState;
}

@riverpod
class SignInFormController extends _$SignInFormController {
  @override
  SignInFormState build() {
    return const SignInFormState();
  }

  /// Updates the email field with the provided [email] and validates the form.
  void emailChanged(String email) {
    final newEmail = Email.dirty(email);
    final isValid = Formz.validate([state.password, newEmail]);
    state = state.copyWith(
      email: newEmail,
      isValid: isValid,
    );
  }

  /// Updates the password field with the provided [password] and validates the form.
  void passwordChanged(String password) {
    final newPassword = Password.dirty(password);
    final isValid = Formz.validate([newPassword, state.email]);
    state = state.copyWith(
      password: newPassword,
      isValid: isValid,
    );
  }

  /// Resets the form to its initial state.
  void resetForm() {
    state = const SignInFormState();
  }
}

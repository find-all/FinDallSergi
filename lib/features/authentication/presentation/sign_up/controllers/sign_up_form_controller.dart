import 'package:fin_dall/core/widgets/email_input.dart';
import 'package:fin_dall/core/widgets/name_input.dart';
import 'package:fin_dall/core/widgets/password_input.dart';
import 'package:formz/formz.dart';
// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up_form_controller.freezed.dart';
part 'sign_up_form_controller.g.dart';

@freezed
class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    @Default(Name.pure()) Name name,
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(false) bool isValid,
  }) = _SignUpFormState;
}

@riverpod
class SignUpFormController extends _$SignUpFormController {
  @override
  SignUpFormState build() {
    return const SignUpFormState();
  }

  /// Changes the name.
  ///
  /// The [name] argument must not be null.
  void nameChanged(String name) {
    final newName = Name.dirty(name);
    final isValid = Formz.validate([newName, state.email, state.password]);
    state = state.copyWith(
      name: newName,
      isValid: isValid,
    );
  }

  /// Changes the email.
  ///
  /// The [email] argument must not be null.
  void emailChanged(String email) {
    final newEmail = Email.dirty(email);
    final isValid = Formz.validate([state.name, newEmail, state.password]);
    state = state.copyWith(
      email: newEmail,
      isValid: isValid,
    );
  }

  /// Changes the password.
  ///
  /// The [password] argument must not be null.
  void passwordChanged(String password) {
    final newPassword = Password.dirty(password);
    final isValid = Formz.validate([state.name, state.email, newPassword]);
    state = state.copyWith(
      password: newPassword,
      isValid: isValid,
    );
  }

  /// Resets the form.
  ///
  void resetForm() {
    state = const SignUpFormState();
  }
}

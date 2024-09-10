// ignore_for_file: invalid_annotation_target
import 'package:fin_dall/core/widgets/code_input.dart';
import 'package:fin_dall/core/widgets/confirm_new_password_input.dart';
import 'package:fin_dall/core/widgets/new_password_input.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'reset_password_form_controller.freezed.dart';
part 'reset_password_form_controller.g.dart';

@freezed
class ResetPasswordFormState with _$ResetPasswordFormState {
  const factory ResetPasswordFormState({
    @Default(Code.pure()) Code code,
    @Default(NewPassword.pure('')) NewPassword password,
    @Default(ConfirmNewPassword.pure('')) ConfirmNewPassword confirmPassword,
    @Default(false) bool isValid,
  }) = _ResetPasswordFormState;
}

@riverpod
class ResetPasswordFormController extends _$ResetPasswordFormController {
  @override
  ResetPasswordFormState build() {
    return const ResetPasswordFormState();
  }

  void codeChanged(String code) {
    final newCode = Code.dirty(code);
    final isValid = Formz.validate([newCode]);

    state = state.copyWith(
      code: newCode,
      isValid: isValid,
    );
  }

  void passwordChanged(String password) {
    final newPassword = NewPassword.dirty('', password);
    final confirmPassword =
        ConfirmNewPassword.dirty(password, state.confirmPassword.value);
    final isValid = Formz.validate([newPassword, state.confirmPassword]);

    state = state.copyWith(
      password: newPassword,
      confirmPassword: confirmPassword,
      isValid: isValid,
    );
  }

  void confirmPasswordChanged(String confirmPassword) {
    final newPassword =
        NewPassword.dirty(state.password.value, confirmPassword);
    final newConfirmPassword =
        ConfirmNewPassword.dirty(state.password.value, confirmPassword);
    final isValid = Formz.validate([state.password, newConfirmPassword]);

    state = state.copyWith(
      password: newPassword,
      confirmPassword: newConfirmPassword,
      isValid: isValid,
    );
  }

  void resetForm() {
    state = const ResetPasswordFormState();
  }
}

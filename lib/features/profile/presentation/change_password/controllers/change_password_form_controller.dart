// ignore_for_file: invalid_annotation_target
import 'package:fin_dall/core/widgets/confirm_new_password_input.dart';
import 'package:fin_dall/core/widgets/new_password_input.dart';
import 'package:fin_dall/core/widgets/password_input.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'change_password_form_controller.freezed.dart';
part 'change_password_form_controller.g.dart';

@freezed
class ChangePasswordFormState with _$ChangePasswordFormState {
  const factory ChangePasswordFormState({
    required Password currentPassword,
    required NewPassword newPassword,
    required ConfirmNewPassword confirmNewPassword,
    @Default(false) bool isValid,
  }) = _ChangePasswordFormState;
}

@riverpod
class ChangePasswordFormController extends _$ChangePasswordFormController {
  @override
  ChangePasswordFormState build() {
    return const ChangePasswordFormState(
      currentPassword: Password.pure(),
      newPassword: NewPassword.pure(''),
      confirmNewPassword: ConfirmNewPassword.pure(''),
    );
  }

  void currentPasswordChanged(String currentPassword) {
    final password = Password.dirty(currentPassword);
    final isValid =
        Formz.validate([password, state.newPassword, state.confirmNewPassword]);

    state = state.copyWith(
      currentPassword: password,
      isValid: isValid,
    );
  }

  void newPasswordChanged(String newPassword) {
    final password = state.currentPassword;
    final newPasswordChanged = NewPassword.dirty(password.value, newPassword);
    final isValid = Formz.validate(
        [state.currentPassword, newPasswordChanged, state.confirmNewPassword]);

    state = state.copyWith(
      newPassword: newPasswordChanged,
      isValid: isValid,
    );
  }

  void confirmNewPasswordChanged(String confirmNewPassword) {
    final newPassword = state.newPassword;
    final confirmNewPasswordChanged =
        ConfirmNewPassword.dirty(newPassword.value, confirmNewPassword);
    final isValid = Formz.validate(
        [state.currentPassword, newPassword, confirmNewPasswordChanged]);

    state = state.copyWith(
      confirmNewPassword: confirmNewPasswordChanged,
      isValid: isValid,
    );
  }

  void reset() {
    state = const ChangePasswordFormState(
      currentPassword: Password.pure(),
      newPassword: NewPassword.pure(''),
      confirmNewPassword: ConfirmNewPassword.pure(''),
    );
  }
}

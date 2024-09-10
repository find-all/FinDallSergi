import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'forget_password_controller.g.dart';

@riverpod
class ForgetPasswordController extends _$ForgetPasswordController {
  @override
  ControllerState<String> build() {
    return const ControllerStateInitial();
  }

  /// Sends a reset password email.
  ///
  /// The [email] argument must not be null.
  ///
  /// The [nif] argument must not be null.
  ///
  /// Example:
  ///
  /// ```dart
  ///
  /// context.read(forgetPasswordProvider.notifier).sendResetPasswordEmail(email: 'aa@aa.aa', nif: '123456789');
  ///
  /// ´´´
  ///
  void sendResetPasswordEmail({required String email}) async {
    state = const ControllerStateLoading();

    final repository = ref.read(authenticationRepositoryProvider);

    final result = await repository.sendPasswordResetEmail(
      email: email,
    );
    result.when(
      success: (token) {
        state = ControllerStateData(token);
      },
      error: (failure) {
        state = ControllerStateError(failure);
      },
    );
  }
}

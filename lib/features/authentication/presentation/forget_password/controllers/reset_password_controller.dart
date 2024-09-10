import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'reset_password_controller.g.dart';

@riverpod
class ResetPasswordController extends _$ResetPasswordController {
  @override
  ControllerState<void> build() {
    return const ControllerStateInitial<void>();
  }

  Future<void> resetPassword({
    required String password,
    required String token,
    required String code,
  }) async {
    state = const ControllerStateLoading<void>();

    final repository = ref.read(authenticationRepositoryProvider);

    final result = await repository.resetPassword(
      password: password,
      token: token,
      code: code,
    );

    result.when(
      success: (_) {
        state = const ControllerStateData<void>(null);
      },
      error: (error) {
        state = ControllerStateError<void>(error);
      },
    );
  }
}

import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:fin_dall/features/authentication/domain/entities/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'verify_account_controller.g.dart';

@riverpod
class VerifyAccountController extends _$VerifyAccountController {
  @override
  ControllerState<User> build() {
    return const ControllerStateInitial<User>();
  }

  Future<void> verifyAccount(
      {required String code, required String token}) async {
    state = const ControllerStateLoading<User>();

    final repository = ref.read(authenticationRepositoryProvider);

    final result = await repository.verifyUserAccount(
      code: code,
      token: token,
    );

    result.when(
      success: (user) {
        state = ControllerStateData<User>(user);
      },
      error: (error) {
        state = ControllerStateError<User>(error);
      },
    );
  }
}

import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up_controller.g.dart';

@riverpod
class SignUpController extends _$SignUpController {
  @override
  ControllerState<({String email, String token})> build() {
    return const ControllerStateInitial();
  }

  Future<void> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    state = const ControllerStateLoading();

    final repository = ref.read(authenticationRepositoryProvider);

    final result = await repository.signUp(
      name: name,
      email: email,
      password: password,
    );

    result.when(
      success: (response) async {
        state = ControllerStateData(response);
      },
      error: (failure) {
        state = ControllerStateError(failure);
      },
    );
  }
}

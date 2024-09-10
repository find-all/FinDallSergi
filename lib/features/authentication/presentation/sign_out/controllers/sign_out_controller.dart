import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_out_controller.g.dart';

@riverpod
class SignOutController extends _$SignOutController {
  @override
  ControllerState<void> build() {
    return const ControllerStateInitial();
  }

  Future<void> signOut() async {
    state = const ControllerStateLoading<void>();

    final repository = ref.read(authenticationRepositoryProvider);

    final response = await repository.signOut();

    response.when(
      success: (_) {
        state = const ControllerStateData(null);
      },
      error: (error) {
        state = ControllerStateError(error);
      },
    );
  }
}

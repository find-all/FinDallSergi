import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delete_account_controller.g.dart';

@riverpod
class DeleteAccountController extends _$DeleteAccountController {
  @override
  ControllerState<void> build() {
    return const ControllerStateInitial();
  }

  Future<void> deleteAccount() async {
    state = const ControllerStateLoading();

    await Future.delayed(const Duration(seconds: 2));

    state = const ControllerStateData(null);
    // TODO implement deleteAccount in repository when server is ready
    /*
    final repository = ref.read(profileRepositoryProvider);

    final result = await repository.deleteAccount();

    result.when(
      success: (_) {
        state = const ControllerStateData(null);
      },
      error: (e) {
        state = ControllerStateError(e);
      },
    );*/
  }
}

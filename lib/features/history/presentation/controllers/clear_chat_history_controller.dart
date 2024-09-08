import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/features/history/data/repositories/history_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'clear_chat_history_controller.g.dart';

@riverpod
class ClearChatHistoryController extends _$ClearChatHistoryController {
  @override
  ControllerState<void> build() {
    return const ControllerStateInitial();
  }

  Future<void> clearChatHistory() async {
    state = const ControllerStateLoading();

    final repository = ref.read(historyRepositoryProvider);

    final result = await repository.clearChatHistory();

    result.when(
      success: (_) {
        state = const ControllerStateData(null);
      },
      error: (e) {
        state = ControllerStateError(e);
      },
    );
  }
}

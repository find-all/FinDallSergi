import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/features/history/data/repositories/history_repository_impl.dart';
import 'package:fin_dall/features/history/domain/entities/chat_history_entry.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remove_chat_history_entry_controller.g.dart';

@riverpod
class RemoveChatHistoryEntryController
    extends _$RemoveChatHistoryEntryController {
  @override
  ControllerState<ChatHistoryEntry> build({required String id}) {
    return const ControllerStateInitial();
  }

  Future<void> removeHistoryEntry() async {
    state = const ControllerStateLoading();

    final repository = ref.read(historyRepositoryProvider);

    final result = await repository.removeChatHistoryEntry(id: id);

    result.when(
      success: (chatHistory) {
        state = ControllerStateData(chatHistory);
      },
      error: (e) {
        state = ControllerStateError(e);
      },
    );
  }
}

import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/features/history/data/repositories/history_repository_impl.dart';
import 'package:fin_dall/features/history/domain/entities/search_history_entry.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remove_search_history_entry_controller.g.dart';

@riverpod
class RemoveSearchHistoryEntryController
    extends _$RemoveSearchHistoryEntryController {
  @override
  ControllerState<SearchHistoryEntry> build({required String id}) {
    return const ControllerStateInitial();
  }

  Future<void> removeHistoryEntry() async {
    state = const ControllerStateLoading();

    final repository = ref.read(historyRepositoryProvider);

    final result = await repository.removeSearchHistoryEntry(
      id: id,
    );

    result.when(
      success: (searchHistory) {
        state = ControllerStateData(searchHistory);
      },
      error: (e) {
        state = ControllerStateError(e);
      },
    );
  }
}

import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/features/history/data/repositories/history_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'clear_search_history_controller.g.dart';

@riverpod
class ClearSearchHistoryController extends _$ClearSearchHistoryController {
  @override
  ControllerState<void> build() {
    return const ControllerStateInitial();
  }

  Future<void> clearSearchHistory() async {
    state = const ControllerStateLoading();

    final repository = ref.read(historyRepositoryProvider);

    final result = await repository.clearSearchHistory();

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

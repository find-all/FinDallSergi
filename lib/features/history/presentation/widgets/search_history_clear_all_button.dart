import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/extensions/failure_extension.dart';
import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/core/widgets/paging_list/paging_controller.dart';
import 'package:fin_dall/features/history/domain/entities/search_history_entry.dart';
import 'package:fin_dall/features/history/presentation/controllers/clear_search_history_controller.dart';
import 'package:fin_dall/features/history/presentation/controllers/search_history_fetch_provider.dart';
import 'package:fin_dall/features/history/presentation/widgets/history_clear_all_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

/// A widget that displays a button to clear all search history entries.
///
/// This widget uses Riverpod for state management and handles the process
/// of clearing all search history, including showing loading overlays and
/// displaying success or error messages.
class SearchHistoryClearAllButton extends ConsumerWidget {
  /// Creates a [SearchHistoryClearAllButton] widget.
  const SearchHistoryClearAllButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the search history fetch provider to get the fetch function
    final fetch = ref.watch(searchHistoryFetchProvider);

    // Create a paging controller for managing search history entries
    final pagingController =
        pagingControllerProvider(fetch: fetch, pageSize: 25, initialPage: 1);

    // Listen for changes in the clear search history state
    ref.listen<ControllerState<void>>(clearSearchHistoryControllerProvider,
        (previous, next) {
      switch (next) {
        case ControllerStateInitial<void>():
          // Hide loading overlay when in initial state
          context.loaderOverlay.hide();
          break;
        case ControllerStateLoading<void>():
          // Show loading overlay when clearing is in progress
          context.loaderOverlay.show();
          break;
        case ControllerStateData<void>():
          // On successful clearing:
          // 1. Hide loading overlay
          context.loaderOverlay.hide();
          // 2. Clear all items from the paging controller
          ref.read(pagingController.notifier).clearAllItem();
          // 3. Show success message
          context.showSuccessSnackBar(
            content: context.loc.clearAllHistorySuccess,
          );
          break;
        case ControllerStateError<void>(error: final failure):
          // On error:
          // 1. Hide loading overlay
          context.loaderOverlay.hide();
          // 2. Show error message
          context.showErrorSnackBar(
            content: failure.getUIMessage(context: context),
          );
          break;
      }
    });

    // Watch the paging controller state to determine if the button should be shown
    final state = ref.watch(
      pagingController.select(
        (value) {
          return switch (value) {
            PageError<SearchHistoryEntry>() => true,
            PageLoadedData<SearchHistoryEntry>() => true,
            LastPage<SearchHistoryEntry>() => true,
            _ => false,
          };
        },
      ),
    );

    // Show the clear all button only if there are items to clear

    return HistoryClearAllButton(
      onPressed: state
          ? () {
              // Trigger the clear search history action
              ref
                  .read(clearSearchHistoryControllerProvider.notifier)
                  .clearSearchHistory();
            }
          : null,
    );
  }
}

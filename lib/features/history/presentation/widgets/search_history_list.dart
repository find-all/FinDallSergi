import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/widgets/paging_list/paging_list.dart';
import 'package:fin_dall/features/history/presentation/controllers/search_history_fetch_provider.dart';
import 'package:fin_dall/features/history/presentation/widgets/search_history_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A widget that displays a paginated list of search history entries.
///
/// This widget uses Riverpod for state management and a custom [PagingList]
/// for efficient loading and display of search history entries.
class SearchHistoryList extends ConsumerWidget {
  /// Creates a [SearchHistoryList] widget.
  const SearchHistoryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the search history fetch provider to get the fetch function
    final fetch = ref.watch(searchHistoryFetchProvider);

    // Return a PagingList configured for search history entries
    return PagingList(
      // Pass the fetch function to the PagingList
      fetch: fetch,
      // Set the initial page to 1
      initialPage: 1,
      // Set the number of items to load per page
      pageSize: 25,
      // Define how to build each item in the list
      itemBuilder: (item) => SearchHistoryListTile(
        entry: item,
      ),
      // Define the loading placeholder for items
      loadingTile: const SearchHistoryListTileLoading(),
      // Define how to build separators between items
      separatorBuilder: (context, index) => const ChatHistoryListDivider(),
      // Make the list take up only as much space as its children require
      shrinkWrap: true,
    );
  }
}

/// A custom divider widget used between chat history list items.
///
/// This widget creates a thin, responsive divider line with a specific indent.
/// Note: Despite its name, it's used in the SearchHistoryList as well.
class ChatHistoryListDivider extends StatelessWidget {
  /// Creates a [ChatHistoryListDivider] widget.
  const ChatHistoryListDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      // Set the color of the divider based on the current layout
      color: context.getResponsiveValue(
        // For compact layouts, use a semi-transparent onSurface color
        compact: context.colorScheme.onSurface.withOpacity(0.6),
        // For other layouts, use a semi-transparent onPrimaryContainer color
        defaultValue: context.colorScheme.onPrimaryContainer.withOpacity(0.6),
      ),
      // Set the thickness of the divider line
      thickness: 0.3,
      // Set the indent (starting point) of the divider from the left
      indent: 70,
    );
  }
}

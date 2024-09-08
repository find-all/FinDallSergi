import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/extensions/failure_extension.dart';
import 'package:fin_dall/core/router/app_router.dart';
import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/core/widgets/custom_image.dart';
import 'package:fin_dall/core/widgets/paging_list/paging_controller.dart';
import 'package:fin_dall/core/widgets/shimmer_box.dart';
import 'package:fin_dall/features/history/domain/entities/search_history_entry.dart';
import 'package:fin_dall/features/history/presentation/controllers/remove_search_history_entry_controller.dart';
import 'package:fin_dall/features/history/presentation/controllers/search_history_fetch_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Constants for image dimensions
const double _historyImageWidth = 50;
const double _historyImageHeight = 50;
const double _historyImageRadius = 10;

/// A list tile widget that displays a single search history entry.
///
/// This widget shows the entry's image, name, description, and a delete button.
/// It also handles navigation to the appropriate route when tapped and manages
/// the deletion of the entry using Riverpod.
class SearchHistoryListTile extends StatelessWidget {
  /// The search history entry to display.
  final SearchHistoryEntry entry;

  /// Creates a [SearchHistoryListTile].
  ///
  /// The [entry] parameter is required and contains the search history data to display.
  const SearchHistoryListTile({
    super.key,
    required this.entry,
  });

  @override
  Widget build(BuildContext context) {
    // Widget to display when image is empty or fails to load
    final emptyErrorWidget = Container(
      width: _historyImageWidth,
      height: _historyImageHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_historyImageRadius),
        color: context.theme.colorScheme.primary.withOpacity(0.2),
      ),
      child: Center(
        child: Icon(
          Icons.image,
          color: context.theme.colorScheme.primary,
        ),
      ),
    );

    return ListTile(
      // Handle tap for navigation
      onTap: () {
        switch (entry) {
          case SearchHistoryEntryBusiness():
            context.router.push(const BusinessRoute());
            break;
          case SearchHistoryEntryProduct():
            context.router.push(const ProductRoute());
            break;
          case SearchHistoryEntryService():
            context.router.push(const ServiceRoute());
            break;
        }
      },
      // Display the entry's image
      // TODO implement hero animation
      leading: CustomImage(
        width: _historyImageWidth,
        height: _historyImageHeight,
        radius: _historyImageRadius,
        image: entry.imageUrl,
        emptyWidget: emptyErrorWidget,
        errorWidget: emptyErrorWidget,
      ),
      // Display the entry's name
      title: Text(entry.name),
      // Display the entry's description
      subtitle: Text(
        entry.description,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      // Display the delete button with Riverpod consumer
      trailing: Consumer(
        builder: (context, ref, child) {
          // Listen for changes in the remove search history entry state
          ref.listen<ControllerState<SearchHistoryEntry>>(
              removeSearchHistoryEntryControllerProvider(id: entry.id),
              (previous, next) {
            switch (next) {
              case ControllerStateInitial<SearchHistoryEntry>():
              case ControllerStateLoading<SearchHistoryEntry>():
                return; // Do nothing for these states
              case ControllerStateData<SearchHistoryEntry>():
                // On successful deletion, remove the item from the paging controller
                final fetch = ref.read(searchHistoryFetchProvider);
                ref
                    .read(pagingControllerProvider(
                            fetch: fetch, pageSize: 25, initialPage: 1)
                        .notifier)
                    .removeItem(predicate: (item) => item.id == entry.id);
                return;
              case ControllerStateError<SearchHistoryEntry>(
                  error: final failure
                ):
                // Show error message if deletion fails
                context.showErrorSnackBar(
                  content: failure.getUIMessage(context: context),
                );
                return;
            }
          });

          // Return the delete button
          return IconButton(
            icon: Icon(
              Icons.delete_forever,
              color: context.colorScheme.error.withOpacity(0.7),
            ),
            onPressed: () {
              // Trigger the removal of the search history entry
              ref
                  .read(removeSearchHistoryEntryControllerProvider(id: entry.id)
                      .notifier)
                  .removeHistoryEntry();
            },
          );
        },
      ),
    );
  }
}

/// A loading placeholder for [SearchHistoryListTile].
///
/// This widget displays a shimmer effect to indicate that the search history
/// entry is being loaded.
class SearchHistoryListTileLoading extends StatelessWidget {
  /// Creates a [SearchHistoryListTileLoading] widget.
  const SearchHistoryListTileLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      // Leading widget: Image placeholder
      leading: ShimmerBox(
        width: _historyImageWidth,
        height: _historyImageHeight,
        radius: _historyImageRadius,
      ),
      // Title: Name placeholder
      title: Padding(
        padding: EdgeInsets.only(bottom: 2),
        child: ShimmerBox(width: 150, height: 20),
      ),
      // Subtitle: Description placeholder
      subtitle: Padding(
        padding: EdgeInsets.only(top: 2),
        child: ShimmerBox(width: 100, height: 14),
      ),
      // Trailing: Delete button placeholder
      trailing: ShimmerCircle(
        radius: 15,
      ),
    );
  }
}

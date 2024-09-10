import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/core/widgets/list_empty_result.dart';
import 'package:fin_dall/core/widgets/list_error_result.dart';
import 'package:fin_dall/features/favorite/domain/entities/favorite.dart';
import 'package:fin_dall/features/favorite/presentation/controllers/favorites_controller.dart';
import 'package:fin_dall/features/favorite/presentation/widgets/favorite_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A widget that displays a list of favorite items.
///
/// This widget uses Riverpod to manage its state and displays different
/// views based on the current state of the favorites data:
/// - Loading state: Shows [FavoriteListLoading]
/// - Empty state: Shows [ListEmptyResult]
/// - Data state: Shows [FavoriteListData]
/// - Error state: Shows [ListErrorResult]
///
/// Example usage:
/// ```dart
/// Consumer(
///   builder: (context, ref, _) => const FavoriteList(),
/// )
/// ```
class FavoriteList extends ConsumerWidget {
  /// Creates a [FavoriteList] widget.
  const FavoriteList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the favoritesControllerProvider to react to state changes
    final state = ref.watch(favoritesControllerProvider);

    // Use a switch expression to handle different states
    return switch (state) {
      // Show loading state for initial load or when explicitly loading
      ControllerStateInitial<List<Favorite>>() ||
      ControllerStateLoading<List<Favorite>>() =>
        const FavoriteListLoading(),

      // Show empty state when the favorites list is empty
      ControllerStateData<List<Favorite>>(data: final favorites)
          when favorites.isEmpty =>
        const ListEmptyResult(),

      // Show the list of favorites when data is available
      ControllerStateData<List<Favorite>>(data: final favorites) =>
        FavoriteListData(favorites: favorites),

      // Show error state when there's a failure
      ControllerStateError<List<Favorite>>(error: final failure) =>
        ListErrorResult(
          failure: failure,
          // Provide a retry function to attempt fetching favorites again
          onRetry: ref.read(favoritesControllerProvider.notifier).getFavorites,
        ),
    };
  }
}

/// A widget that displays a list of favorite items when data is available.
///
/// This widget creates a scrollable list of [FavoriteListTile] widgets,
/// with separators between each item.
///
/// Example usage:
/// ```dart
/// FavoriteListData(
///   favorites: [
///     Favorite(id: '1', name: 'Item 1', description: 'Description 1'),
///     Favorite(id: '2', name: 'Item 2', description: 'Description 2'),
///   ],
/// )
/// ```
class FavoriteListData extends StatelessWidget {
  /// The list of favorite items to display.
  final List<Favorite> favorites;

  /// Creates a [FavoriteListData] widget.
  ///
  /// The [favorites] parameter is required and contains the list of
  /// favorite items to display.
  const FavoriteListData({
    super.key,
    required this.favorites,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      // Set the number of items in the list
      itemCount: favorites.length,
      // Set the scroll direction to vertical
      scrollDirection: Axis.vertical,
      // Define a separator builder for visual separation between items
      separatorBuilder: (context, index) => const FavoriteListDivider(),
      // Build a FavoriteListTile for each favorite item
      itemBuilder: (context, index) =>
          FavoriteListTile(favorite: favorites[index]),
    );
  }
}

/// A widget that displays a loading state for the favorite list.
///
/// This widget creates a scrollable list of [FavoriteListTileLoading] widgets,
/// mimicking the structure of [FavoriteListData] to provide a smooth transition
/// when data becomes available.
///
/// Example usage:
/// ```dart
/// if (isLoading) {
///   return const FavoriteListLoading();
/// } else {
///   return FavoriteListData(favorites: favorites);
/// }
/// ```
class FavoriteListLoading extends StatelessWidget {
  /// Creates a [FavoriteListLoading] widget.
  const FavoriteListLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      // Show 10 loading items as a placeholder
      itemCount: 10,
      scrollDirection: Axis.vertical,
      // Use the same separator as FavoriteListData for consistency
      separatorBuilder: (context, index) => const FavoriteListDivider(),
      // Use FavoriteListTileLoading for each item in the loading state
      itemBuilder: (context, _) => const FavoriteListTileLoading(),
    );
  }
}

/// A widget that displays a divider between favorite items.
///
/// This widget is used to visually separate favorite items in the list.
///
/// Example usage:
/// ```dart
/// ListView.separated(
///   separatorBuilder: (context, index) => const FavoriteListDivider(),
///   itemBuilder: (context, index) {
///     ...
///   },
/// )
/// ```
///
class FavoriteListDivider extends StatelessWidget {
  const FavoriteListDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: context.getResponsiveValue(
        compact: context.colorScheme.onSurface.withOpacity(0.6),
        defaultValue: context.colorScheme.onPrimaryContainer.withOpacity(0.6),
      ),
      thickness: 0.3,
      indent: 70,
    );
  }
}

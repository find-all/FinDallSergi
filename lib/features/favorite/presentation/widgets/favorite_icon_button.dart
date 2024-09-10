import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/extensions/failure_extension.dart';
import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/features/favorite/domain/entities/favorite.dart';
import 'package:fin_dall/features/favorite/presentation/controllers/add_favorite_controller.dart';
import 'package:fin_dall/features/favorite/presentation/controllers/delete_favorite_controller.dart';
import 'package:fin_dall/features/favorite/presentation/controllers/favorites_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A widget that displays a favorite icon button which can be toggled on and off.
///
/// This widget uses Riverpod to manage its state and react to changes in the
/// favorite status of an item. It listens to add and delete favorite actions
/// and updates the UI accordingly.
///
/// The button appears as a filled heart when the item is favorited, and as an
/// outlined heart when it's not.
///
/// Example usage:
/// ```dart
/// FavoriteIconButton(id: 'item_123')
/// ```
class FavoriteIconButton extends ConsumerWidget {
  /// The unique identifier of the item that can be favorited.
  final String id;

  /// Creates a [FavoriteIconButton] widget.
  ///
  /// The [id] parameter is required and should be the unique identifier
  /// of the item that can be favorited.
  const FavoriteIconButton({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Listen for changes in the add favorite action
    ref.listen<ControllerState<Favorite>>(
      addFavoriteControllerProvider(id: id),
      (previous, next) {
        switch (next) {
          case ControllerStateInitial():
          case ControllerStateLoading():
            // Do nothing for these states
            break;
          case ControllerStateData(data: final favorite):
            // When a favorite is successfully added, update the favorites list
            ref
                .read(favoritesControllerProvider.notifier)
                .addFavorite(favorite);
            break;
          case ControllerStateError(error: final error):
            // Show an error message if adding favorite fails
            context.showErrorSnackBar(
              content: error.getUIMessage(context: context),
            );
            break;
        }
      },
    );

    // Listen for changes in the delete favorite action
    ref.listen<ControllerState<Favorite>>(
      deleteFavoriteControllerProvider(id: id),
      (prev, next) {
        switch (next) {
          case ControllerStateInitial():
          case ControllerStateLoading():
            // Do nothing for these states
            break;
          case ControllerStateData(data: final favorite):
            // When a favorite is successfully deleted, update the favorites list
            ref
                .read(favoritesControllerProvider.notifier)
                .removeFavorite(favorite);
            break;
          case ControllerStateError(error: final error):
            // Show an error message if deleting favorite fails
            context.showErrorSnackBar(
              content: error.getUIMessage(context: context),
            );
            break;
        }
      },
    );

    // Check if the current item is in the favorites list
    final isFavorite = ref.watch(
      favoritesControllerProvider.select(
        (value) {
          if (value is ControllerStateData<List<Favorite>>) {
            return value.data.any((element) => element.id == id);
          }
          return false;
        },
      ),
    );

    // Return an IconButton with appropriate icon and color based on favorite status
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: isFavorite ? Colors.red : null,
      ),
      onPressed: () {
        if (isFavorite) {
          // If it's already a favorite, delete it
          ref
              .read(deleteFavoriteControllerProvider(id: id).notifier)
              .deleteFavorite();
        } else {
          // If it's not a favorite, add it
          ref
              .read(addFavoriteControllerProvider(id: id).notifier)
              .addFavorite();
        }
      },
    );
  }
}

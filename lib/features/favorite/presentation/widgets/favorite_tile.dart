import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/extensions/failure_extension.dart';
import 'package:fin_dall/core/router/app_router.dart';
import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/core/widgets/custom_image.dart';
import 'package:fin_dall/core/widgets/shimmer_box.dart';
import 'package:fin_dall/features/favorite/domain/entities/favorite.dart';
import 'package:fin_dall/features/favorite/presentation/controllers/delete_favorite_controller.dart';
import 'package:fin_dall/features/favorite/presentation/controllers/favorites_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Constants
/// The height of the favorite item's image.
const double _favoriteImageHeight = 50;

/// The width of the favorite item's image.
const double _favoriteImageWidth = 50;

/// The border radius of the favorite item's image.
const double _favoriteImageRadius = 10;

/// A customizable list tile widget for displaying favorite items.
///
/// This widget is used to display a favorite item in a list, showing its image,
/// name, description, and a delete button. It supports different types of
/// favorites (Business, Product, Service) and navigates to the appropriate
/// route when tapped.
///
/// The [FavoriteListTile] uses [CustomImage] for displaying the favorite's image
/// and integrates with Riverpod for state management of the delete functionality.
///
/// Example usage:
/// ```dart
/// FavoriteListTile(
///   favorite: Favorite(
///     id: '1',
///     name: 'Favorite Item',
///     description: 'A brief description',
///     imageUrl: 'https://example.com/image.jpg',
///   ),
/// )
/// ```
class FavoriteListTile extends StatelessWidget {
  /// The favorite item to display in the list tile.
  final Favorite favorite;

  /// Creates a [FavoriteListTile].
  ///
  /// The [favorite] parameter is required and represents the favorite item
  /// to be displayed.
  const FavoriteListTile({
    super.key,
    required this.favorite,
  });

  @override
  Widget build(BuildContext context) {
    final emptyErrorWidget = Container(
      width: _favoriteImageWidth,
      height: _favoriteImageHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_favoriteImageRadius),
        color: context.theme.colorScheme.primary.withOpacity(0.2),
      ),
      child: Center(
        child: Icon(
          Icons.image,
          color: context.theme.colorScheme.primary,
        ),
      ),
    );
    // TODO apply hero to image and title and subtitle
    return ListTile(
      onTap: () {
        switch (favorite) {
          case FavoriteBusiness():
            context.router.push(const BusinessRoute());
            break;
          case FavoriteProduct():
            context.router.push(const ProductRoute());
            break;
          case FavoriteService():
            context.router.push(const ServiceRoute());
            break;
        }
      },
      leading: CustomImage(
        width: _favoriteImageWidth,
        height: _favoriteImageHeight,
        radius: _favoriteImageRadius,
        image: favorite.imageUrl,
        emptyWidget: emptyErrorWidget,
        errorWidget: emptyErrorWidget,
      ),
      title: Text(
        favorite.name,
        style: context.theme.listTileTheme.titleTextStyle?.copyWith(
          color: context.getResponsiveValue<Color?>(
            compact: context.theme.colorScheme.onSurface,
            defaultValue: context.colorScheme.onPrimaryContainer,
          ),
        ),
      ),
      subtitle: Text(
        favorite.description,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: context.theme.listTileTheme.subtitleTextStyle?.copyWith(
          color: context.getResponsiveValue<Color?>(
            compact: context.theme.colorScheme.onSurface,
            defaultValue: context.colorScheme.onPrimaryContainer,
          ),
        ),
      ),
      trailing: Consumer(builder: (context, ref, _) {
        ref.listen<ControllerState<Favorite>>(
          deleteFavoriteControllerProvider(id: favorite.id),
          (prev, next) {
            switch (next) {
              case ControllerStateInitial<Favorite>():
              case ControllerStateLoading<Favorite>():
                return;
              case ControllerStateData<Favorite>():
                // Optimistic update
                ref
                    .read(favoritesControllerProvider.notifier)
                    .removeFavorite(favorite);
                return;
              case ControllerStateError<Favorite>(error: final failure):
                // On error, show the error message
                context.showErrorSnackBar(
                  content: failure.getUIMessage(context: context),
                );

                return;
            }
          },
        );

        return IconButton(
          icon: const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          onPressed: () {
            ref
                .read(
                    deleteFavoriteControllerProvider(id: favorite.id).notifier)
                .deleteFavorite();
          },
        );
      }),
    );
  }
}

/// A loading placeholder for [FavoriteListTile].
///
/// This widget is used to display a shimmer effect while the actual
/// [FavoriteListTile] data is being loaded. It mimics the structure of
/// [FavoriteListTile] to provide a smooth transition when data becomes available.
///
/// Example usage:
/// ```dart
/// ListView.builder(
///   itemBuilder: (context, index) {
///     if (isLoading) {
///       return const FavoriteListTileLoading();
///     } else {
///       return FavoriteListTile(favorite: favorites[index]);
///     }
///   },
/// )
/// ```
///
class FavoriteListTileLoading extends StatelessWidget {
  /// Creates a [FavoriteListTileLoading] widget.
  const FavoriteListTileLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: ShimmerBox(
        width: _favoriteImageWidth,
        height: _favoriteImageHeight,
        radius: _favoriteImageRadius,
      ),
      title: ShimmerBox(width: 150, height: 20),
      subtitle: Padding(
        padding: EdgeInsets.only(top: 2),
        child: ShimmerBox(width: 100, height: 14),
      ),
      trailing: ShimmerCircle(
        radius: 15,
      ),
    );
  }
}

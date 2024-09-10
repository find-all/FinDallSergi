import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/widgets/detail_scaffold.dart';
import 'package:fin_dall/features/favorite/presentation/widgets/favorite_list.dart';
import 'package:flutter/material.dart';

/// The main Favorites page that adapts to different screen sizes.
///
/// This widget uses a responsive framework to display different layouts
/// based on the screen size: compact, medium, or expanded.
@RoutePage()
class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Use a custom extension method to get the appropriate widget based on screen size
    return context.getResponsiveWidget(
      compact: const FavoritesCompactPage(),
      medium: const FavoritesMediumPage(),
      defaultWidget: const FavoritesExpandedPage(),
    );
  }
}

/// Compact layout for the Favorites page, typically used on small screens.
class FavoritesCompactPage extends StatelessWidget {
  const FavoritesCompactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.loc.favorites, // Use localized string for 'Favorites'
        ),
        centerTitle: false,
      ),
      body: const FavoriteList(), // Display the list of favorites
    );
  }
}

/// Medium layout for the Favorites page, typically used on tablets or larger phones.
class FavoritesMediumPage extends StatelessWidget {
  const FavoritesMediumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DetailScaffold(
      title: context.loc.favorites,
      onBackPressed: () => context.router.maybePop(),
      body: const FavoriteList(),
    );
  }
}

/// Expanded layout for the Favorites page, typically used on large tablets or desktops.
/// Currently, this uses the same layout as the medium layout.
class FavoritesExpandedPage extends StatelessWidget {
  const FavoritesExpandedPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Reuse the medium layout for expanded view
    return const FavoritesMediumPage();
  }
}

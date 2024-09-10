import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// TODO cambiar version movil. Debe ser como los extends pero en lista
// TODO documentar
enum AccountTileType {
  profile,
  favorites,
  reviews,
  history,
}

class AccountTile extends StatelessWidget {
  final AccountTileType _type;

  const AccountTile.profile({super.key}) : _type = AccountTileType.profile;

  const AccountTile.favorites({super.key}) : _type = AccountTileType.favorites;

  const AccountTile.reviews({super.key}) : _type = AccountTileType.reviews;

  const AccountTile.history({super.key}) : _type = AccountTileType.history;

  @override
  Widget build(BuildContext context) {
    final title = switch (_type) {
      AccountTileType.profile => context.loc.profile,
      AccountTileType.favorites => context.loc.favorites,
      AccountTileType.reviews => context.loc.reviews,
      AccountTileType.history => context.loc.history,
    };

    final icon = switch (_type) {
      AccountTileType.profile => Icons.person,
      AccountTileType.favorites => Icons.favorite,
      AccountTileType.reviews => Icons.star,
      AccountTileType.history => Icons.history,
    };

    final ilustration = switch (_type) {
      AccountTileType.profile => 'assets/img/profile.svg',
      AccountTileType.favorites => 'assets/img/favorites.svg',
      AccountTileType.reviews => 'assets/img/reviews.svg',
      AccountTileType.history => 'assets/img/history.svg',
    };

    final onTap = switch (_type) {
      AccountTileType.profile => () =>
          context.router.push(const ProfileRoute()),
      AccountTileType.favorites => () =>
          context.router.push(const FavoritesRoute()),
      AccountTileType.reviews => () =>
          context.router.push(const MyReviewsRoute()),
      AccountTileType.history => () =>
          context.router.push(const HistoryRoute()),
    };

    return context.getResponsiveWidget(
      compact: AccountCompactTile(
        title: title,
        icon: icon,
        onTap: onTap,
      ),
      medium: AccountMediumTile(
        title: title,
        ilustration: ilustration,
        onTap: onTap,
      ),
      defaultWidget: AccountExpandedTile(
        title: title,
        ilustration: ilustration,
        onTap: onTap,
      ),
    );
  }
}

class AccountCompactTile extends StatelessWidget {
  final String title;

  final void Function()? onTap;

  final IconData icon;

  const AccountCompactTile({
    super.key,
    required this.title,
    this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}

class AccountMediumTile extends StatelessWidget {
  final String title;

  final void Function()? onTap;

  final String ilustration;

  const AccountMediumTile({
    super.key,
    required this.title,
    this.onTap,
    required this.ilustration,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        splashColor: context.colorScheme.primaryContainer.withOpacity(0.2),
        overlayColor: WidgetStateProperty.all(
          context.colorScheme.primaryContainer.withOpacity(
            0.2,
          ),
        ),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                child: SvgPicture.asset(
                  ilustration,
                  fit: BoxFit.scaleDown,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  title,
                  style: context.textTheme.titleLarge?.copyWith(
                    color: context.colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AccountExpandedTile extends StatelessWidget {
  final String title;

  final void Function()? onTap;

  final String ilustration;
  const AccountExpandedTile(
      {super.key, required this.title, this.onTap, required this.ilustration});

  @override
  Widget build(BuildContext context) {
    return AccountMediumTile(
      title: title,
      ilustration: ilustration,
      onTap: onTap,
    );
  }
}

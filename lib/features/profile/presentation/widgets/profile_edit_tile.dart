import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';

/// [ProfileEditTileParams] is the parameters of the [ProfileEditTile].
///
sealed class ProfileEditTileParams {
  const ProfileEditTileParams();
}

/// [ProfileEditTileParamsLoaded] is the parameters of the [ProfileEditTile] when it is loaded.
///
/// [icon] is the icon of the tile.
///
/// [title] is the title of the tile.
///
/// [subtitle] is the subtitle of the tile.
///
/// [onTap] is the function that is called when the tile is tapped. If not null, an edit icon is displayed on the right side of the tile
///
final class ProfileEditTileParamsLoaded extends ProfileEditTileParams {
  final IconData icon;
  final String title;
  final String subtitle;
  final void Function()? onTap;

  const ProfileEditTileParamsLoaded({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.onTap,
  });
}

/// [ProfileEditTileParamsDeleteAccount] is the parameters of the [ProfileEditTile] when it is a delete account tile
///
/// [icon] is the icon of the tile.
///
/// [title] is the title of the tile.
///
/// [subtitle] is the subtitle of the tile.
///
/// [onTap] is the function that is called when the tile is tapped. If not null, an edit icon is displayed on the right side of the tile
///
final class ProfileEditTileParamsDeleteAccount extends ProfileEditTileParams {
  final IconData icon;
  final String title;
  final String subtitle;
  final void Function() onTap;

  const ProfileEditTileParamsDeleteAccount({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });
}

/// [ProfileEditTileParamsLoading] is the parameters of the [ProfileEditTile] when it is loading.
///
/// [icon] is the icon of the tile.
///
/// [title] is the title of the tile.
///
final class ProfileEditTileParamsLoading extends ProfileEditTileParams {
  final IconData icon;
  final String title;
  const ProfileEditTileParamsLoading({
    required this.icon,
    required this.title,
  });
}

/// [ProfileEditTile] is a widget that displays a tile with an icon, a title, a subtitle and an optional edit icon.
///
/// [_params] is the parameters of the tile.
///
class ProfileEditTile extends StatelessWidget {
  final ProfileEditTileParams _params;

  const ProfileEditTile.loaded({
    super.key,
    required ProfileEditTileParamsLoaded params,
  }) : _params = params;

  const ProfileEditTile.deleteAccount({
    super.key,
    required ProfileEditTileParamsDeleteAccount params,
  }) : _params = params;

  const ProfileEditTile.loading({
    super.key,
    required ProfileEditTileParamsLoading params,
  }) : _params = params;

  @override
  Widget build(BuildContext context) {
    // If tile is for delete account, the background color will be error color with opacity 0.2

    final backgroundColor = switch (_params) {
      ProfileEditTileParamsDeleteAccount() =>
        context.colorScheme.error.withOpacity(0.2),
      _ => context.colorScheme.surface,
    };

    final iconColor = context.colorScheme.onPrimaryContainer;

    const elevation = 0.0;

    final borderRadius = BorderRadius.circular(10);

    return Material(
      elevation: elevation,
      borderRadius: borderRadius,
      color: backgroundColor,
      child: InkWell(
        onTap: switch (_params) {
          ProfileEditTileParamsLoaded(onTap: final onTap) => onTap,
          ProfileEditTileParamsLoading() => null,
          ProfileEditTileParamsDeleteAccount(onTap: final onTap) => onTap,
        },
        borderRadius: borderRadius,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Icon(
                switch (_params) {
                  ProfileEditTileParamsLoaded(icon: final icon) => icon,
                  ProfileEditTileParamsLoading(icon: final icon) => icon,
                  ProfileEditTileParamsDeleteAccount(icon: final icon) => icon,
                },
                color: iconColor,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      switch (_params) {
                        ProfileEditTileParamsLoaded(title: final title) =>
                          title,
                        ProfileEditTileParamsLoading(title: final title) =>
                          title,
                        ProfileEditTileParamsDeleteAccount(
                          title: final title
                        ) =>
                          title,
                      },
                      style: context.theme.textTheme.titleMedium,
                    ),
                    switch (_params) {
                      ProfileEditTileParamsLoaded(subtitle: final subtitle) =>
                        Text(subtitle,
                            style: context.theme.textTheme.bodyMedium),
                      ProfileEditTileParamsDeleteAccount(
                        subtitle: final subtitle
                      ) =>
                        Text(subtitle,
                            style: context.theme.textTheme.bodyMedium),
                      ProfileEditTileParamsLoading() => const Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.0),
                          child: ShimmerBox(
                            width: 150,
                            height: 20,
                          ),
                        ),
                    },
                  ],
                ),
              ),
              switch (_params) {
                ProfileEditTileParamsLoaded(onTap: final onTap) => onTap != null
                    ? Icon(Icons.edit, color: iconColor)
                    : const SizedBox(),
                ProfileEditTileParamsDeleteAccount() => const SizedBox(),
                ProfileEditTileParamsLoading() => const SizedBox(),
              },
            ],
          ),
        ),
      ),
    );
  }
}

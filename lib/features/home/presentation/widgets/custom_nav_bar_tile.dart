import 'package:cuberto_bottom_bar/internal/internal.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

/// A utility class for creating custom compact navigation bar tiles.
///
/// This class provides a static method to build [SalomonBottomBarItem]s for use
/// in a [SalomonBottomBar], which is typically used in [CustomCompactNavBar].
class CustomCompactNavBarTile {
  /// Builds a [SalomonBottomBarItem] with the provided parameters.
  ///
  /// [context] is used to access the color scheme.
  /// [text] is the label for the navigation item.
  /// [icon] is the default icon for the item.
  /// [selectedIcon] is the icon shown when the item is selected.
  ///
  /// Example usage:
  /// ```dart
  /// SalomonBottomBar(
  ///   items: [
  ///     CustomCompactNavBarTile.build(
  ///       context: context,
  ///       text: 'Home',
  ///       icon: Icons.home_outlined,
  ///       selectedIcon: Icons.home,
  ///     ),
  ///   ],
  /// )
  /// ```
  static TabData build({
    required BuildContext context,
    required String text,
    required IconData icon,
    required IconData selectedIcon,
  }) =>
      TabData(
        iconData: icon,
        title: text,
        tabColor: context.colorScheme.primary,
      );
}

/// A custom medium-sized navigation bar tile widget.
///
/// This widget is typically used in [CustomMediumNavBar] for tablet-sized screens.
/// It displays an icon that changes when selected and has a background color change animation.
class CustomMediumNavBarTile extends StatelessWidget {
  /// The default icon to display.
  final IconData icon;

  /// The icon to display when the tile is selected.
  final IconData selectedIcon;

  /// Whether the tile is currently selected.
  final bool isSelected;

  /// The function to call when the tile is tapped.
  final void Function()? onPressed;

  /// Creates a [CustomMediumNavBarTile].
  ///
  /// All parameters except [isSelected] and [onPressed] are required.
  const CustomMediumNavBarTile({
    super.key,
    required this.icon,
    required this.selectedIcon,
    this.isSelected = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: isSelected
            ? context.colorScheme.onPrimaryContainer
            : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(vertical: 1),
      child: InkWell(
        splashColor: context.colorScheme.primary.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
        onTap: onPressed,
        child: AspectRatio(
          aspectRatio: 1,
          child: Center(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              child: Icon(
                isSelected ? selectedIcon : icon,
                color: isSelected
                    ? context.colorScheme.primaryContainer
                    : context.colorScheme.onPrimaryContainer,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// A custom expanded navigation bar tile widget.
///
/// This widget is typically used in [CustomExtendedNavBar] for desktop or large tablet screens.
/// It displays an icon and text label, both of which change color when selected.
/// The tile also has a background color change animation when selected.
class CustomExpandedNavBarTile extends StatelessWidget {
  /// The text label for the tile.
  final String text;

  /// The default icon to display.
  final IconData icon;

  /// The icon to display when the tile is selected.
  final IconData selectedIcon;

  /// Whether the tile is currently selected.
  final bool isSelected;

  /// The function to call when the tile is tapped.
  final void Function()? onPressed;

  /// Creates a [CustomExpandedNavBarTile].
  ///
  /// All parameters except [isSelected] and [onPressed] are required.
  const CustomExpandedNavBarTile({
    super.key,
    required this.text,
    required this.icon,
    required this.selectedIcon,
    this.isSelected = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: isSelected
            ? context.colorScheme.onPrimaryContainer
            : Colors.transparent,
        borderRadius: BorderRadius.circular(50),
      ),
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        splashColor: context.colorScheme.primary.withOpacity(0.2),
        borderRadius: BorderRadius.circular(50),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
                child: Icon(
                  isSelected ? selectedIcon : icon,
                  color: isSelected
                      ? context.colorScheme.primaryContainer
                      : context.colorScheme.onPrimaryContainer,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(
                  color: isSelected
                      ? context.colorScheme.primaryContainer
                      : context.colorScheme.onPrimaryContainer,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

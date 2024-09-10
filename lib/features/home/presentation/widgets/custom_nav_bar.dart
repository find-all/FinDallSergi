import 'package:cuberto_bottom_bar/internal/cuberto_bottom_bar.dart';
import 'package:cuberto_bottom_bar/internal/tab_data.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/features/app_language/presentation/widgets/app_language_selector.dart';
import 'package:fin_dall/features/app_theme/presentation/widgets/app_theme_selector.dart';
import 'package:fin_dall/features/authentication/presentation/sign_out/widgets/sign_out_button.dart';
import 'package:fin_dall/features/home/presentation/widgets/custom_nav_bar_tile.dart';
import 'package:fin_dall/features/profile/presentation/widgets/profile_navbar.dart';
import 'package:flutter/material.dart';

/// A custom compact bottom navigation bar widget.
///
/// This widget creates a compact bottom navigation bar using the SalomonBottomBar package.
/// It's typically used for mobile screens or where space is limited.
///
/// Example usage:
/// ```dart
/// CustomCompactNavBar(
///   selectedIndex: _currentIndex,
///   onSelected: (index) => setState(() => _currentIndex = index),
/// )
/// ```
class CustomCompactNavBar extends StatelessWidget {
  /// The index of the currently selected item.
  final int selectedIndex;

  /// Callback function called when an item is selected.
  final void Function(int index)? onSelected;

  /// Creates a [CustomCompactNavBar].
  ///
  /// The [selectedIndex] parameter is required and indicates the currently selected item.
  /// The [onSelected] parameter is optional and is called when an item is selected.
  const CustomCompactNavBar({
    super.key,
    required this.selectedIndex,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return CubertoBottomBar(
      key: const Key("BottomBar"),
      tabStyle: CubertoTabStyle.styleNormal,
      selectedTab: selectedIndex,
      inactiveIconColor: context.colorScheme.onPrimaryContainer,
      textColor: context.colorScheme.primaryContainer,
      tabColor: context.colorScheme.surface,
      tabs: [
        CustomCompactNavBarTile.build(
          text: context.loc.chat,
          icon: Icons.chat_bubble,
          selectedIcon: Icons.chat_bubble_outline,
          context: context,
        ),
        CustomCompactNavBarTile.build(
          text: context.loc.map,
          icon: Icons.location_on,
          selectedIcon: Icons.location_on_outlined,
          context: context,
        ),
        CustomCompactNavBarTile.build(
          text: context.loc.carousel,
          icon: Icons.copy,
          selectedIcon: Icons.copy_outlined,
          context: context,
        ),
        CustomCompactNavBarTile.build(
          text: context.loc.account,
          icon: Icons.person,
          selectedIcon: Icons.person_outlined,
          context: context,
        ),
      ],
      onTabChangedListener: (position, title, color) {
        onSelected?.call(position);
      },
    );
  }
}

/// A custom medium-sized vertical navigation bar widget.
///
/// This widget creates a medium-sized vertical navigation bar, typically used for tablet-sized screens.
/// It includes a profile section at the top and a sign-out button at the bottom.
///
/// Example usage:
/// ```dart
/// CustomMediumNavBar(
///   selectedIndex: _currentIndex,
///   onSelected: (index) => setState(() => _currentIndex = index),
/// )
/// ```
class CustomMediumNavBar extends StatelessWidget {
  /// The index of the currently selected item.
  final int selectedIndex;

  /// Callback function called when an item is selected.
  final void Function(int index)? onSelected;

  /// Creates a [CustomMediumNavBar].
  ///
  /// The [selectedIndex] parameter is required and indicates the currently selected item.
  /// The [onSelected] parameter is optional and is called when an item is selected.
  const CustomMediumNavBar({
    super.key,
    required this.selectedIndex,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: context.width * 0.1),
          child: Column(
            children: [
              const ProfileMediumNavbar(),
              SizedBox(height: context.height * 0.02),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      CustomMediumNavBarTile(
                        icon: Icons.chat_bubble,
                        selectedIcon: Icons.chat_bubble_outline,
                        isSelected: selectedIndex == 0,
                        onPressed: () => onSelected?.call(0),
                      ),
                      CustomMediumNavBarTile(
                        icon: Icons.location_on,
                        selectedIcon: Icons.location_on_outlined,
                        isSelected: selectedIndex == 1,
                        onPressed: () => onSelected?.call(1),
                      ),
                      CustomMediumNavBarTile(
                        icon: Icons.copy,
                        selectedIcon: Icons.copy_outlined,
                        isSelected: selectedIndex == 2,
                        onPressed: () => onSelected?.call(2),
                      ),
                      CustomMediumNavBarTile(
                        icon: Icons.person,
                        selectedIcon: Icons.person_outlined,
                        isSelected: selectedIndex == 3,
                        onPressed: () => onSelected?.call(3),
                      ),
                      const Spacer(),
                      AppLanguageSelector(
                          color: context.colorScheme.onPrimaryContainer),
                      const SizedBox(
                        height: 10,
                      ),
                      AppThemeSelector(
                          color: context.colorScheme.onPrimaryContainer),
                      const SizedBox(
                        height: 10,
                      ),
                      const SignOutButton.icon(),
                    ],
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

/// A custom extended vertical navigation bar widget.
///
/// This widget creates an extended vertical navigation bar, typically used for desktop or large tablet screens.
/// It includes a profile section at the top, labeled navigation items, and a sign-out button at the bottom.
///
/// Example usage:
/// ```dart
/// CustomExtendedNavBar(
///   selectedIndex: _currentIndex,
///   onSelected: (index) => setState(() => _currentIndex = index),
/// )
/// ```
class CustomExtendedNavBar extends StatelessWidget {
  /// The index of the currently selected item.
  final int selectedIndex;

  /// Callback function called when an item is selected.
  final void Function(int index)? onSelected;

  /// Creates a [CustomExtendedNavBar].
  ///
  /// The [selectedIndex] parameter is required and indicates the currently selected item.
  /// The [onSelected] parameter is optional and is called when an item is selected.
  const CustomExtendedNavBar({
    super.key,
    required this.selectedIndex,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: context.width * 0.2),
          child: Column(
            children: [
              const ProfileExtendedNavbar(),
              SizedBox(height: context.height * 0.02),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      CustomExpandedNavBarTile(
                        text: context.loc.chat,
                        icon: Icons.chat_bubble,
                        selectedIcon: Icons.chat_bubble_outline,
                        isSelected: selectedIndex == 0,
                        onPressed: () => onSelected?.call(0),
                      ),
                      CustomExpandedNavBarTile(
                        text: context.loc.map,
                        icon: Icons.location_on,
                        selectedIcon: Icons.location_on_outlined,
                        isSelected: selectedIndex == 1,
                        onPressed: () => onSelected?.call(1),
                      ),
                      CustomExpandedNavBarTile(
                        text: context.loc.carousel,
                        icon: Icons.copy,
                        selectedIcon: Icons.copy_outlined,
                        isSelected: selectedIndex == 2,
                        onPressed: () => onSelected?.call(2),
                      ),
                      CustomExpandedNavBarTile(
                        text: context.loc.account,
                        icon: Icons.person,
                        selectedIcon: Icons.person_outlined,
                        isSelected: selectedIndex == 3,
                        onPressed: () => onSelected?.call(3),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: AppLanguageSelector(
                                  color:
                                      context.colorScheme.onPrimaryContainer),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: Center(
                              child: AppThemeSelector(
                                  color:
                                      context.colorScheme.onPrimaryContainer),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SignOutButton(),
                    ],
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

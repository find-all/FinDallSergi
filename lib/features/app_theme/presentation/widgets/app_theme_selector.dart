import 'package:fin_dall/features/app_theme/domain/entities/app_theme.dart';
import 'package:fin_dall/features/app_theme/presentation/controllers/app_theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppThemeSelector extends ConsumerWidget {
  final Color? color;

  const AppThemeSelector({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context, ref) {
    final appTheme = ref.watch(appThemeControllerProvider);

    return IconButton(
      onPressed: ref.read(appThemeControllerProvider.notifier).toggle,
      icon: Icon(
        switch (appTheme) {
          LightTheme() => Icons.light_mode,
          DarkTheme() => Icons.dark_mode,
        },
        color: color,
      ),
    );
  }
}

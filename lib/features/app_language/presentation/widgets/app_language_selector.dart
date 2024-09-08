import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/features/app_language/domain/entities/app_language.dart';
import 'package:fin_dall/features/app_language/presentation/controllers/app_language_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppLanguageSelector extends StatefulWidget {
  final Color? color;

  const AppLanguageSelector({super.key, this.color});

  @override
  AppLanguageSelectorState createState() => AppLanguageSelectorState();
}

class AppLanguageSelectorState extends State<AppLanguageSelector> {
  late MenuController _menuController;

  late Color? _color;

  @override
  void initState() {
    _color = widget.color;
    _menuController = MenuController();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant AppLanguageSelector oldWidget) {
    _color = widget.color;
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      controller: _menuController,
      consumeOutsideTap: true,
      menuChildren: [
        AppLanguageMenuItem.spanish(close: _menuController.close),
        AppLanguageMenuItem.english(close: _menuController.close),
      ],
      child: Consumer(
        builder: (context, ref, _) {
          final appLanguage = ref.watch(appLanguageControllerProvider);
          return InkWell(
            onTap: () {
              if (_menuController.isOpen) return;
              _menuController.open();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                appLanguage.languageCode.toUpperCase(),
                style: context.textTheme.bodyLarge?.copyWith(
                  color: _color,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class AppLanguageMenuItem extends ConsumerWidget {
  final AppLanguage _language;

  final void Function() close;

  const AppLanguageMenuItem.spanish({
    super.key,
    required this.close,
  }) : _language = const Spanish();

  const AppLanguageMenuItem.english({
    super.key,
    required this.close,
  }) : _language = const English();

  @override
  Widget build(BuildContext context, ref) {
    final appLanguage = ref.watch(appLanguageControllerProvider);
    return InkWell(
      onTap: () {
        if (appLanguage == _language) return;
        ref
            .read(appLanguageControllerProvider.notifier)
            .setAppLanguage(appLanguage: _language);
        close();
      },
      child: SizedBox(
        width: 180,
        height: 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  switch (_language) {
                    Spanish() => context.loc.spanish,
                    English() => context.loc.english,
                  },
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: context.theme.colorScheme.onSurface,
                  ),
                ),
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                switchInCurve: Curves.easeInOut,
                transitionBuilder: (child, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
                child: appLanguage == _language
                    ? Icon(Icons.check,
                        color: context.theme.colorScheme.primary)
                    : const SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

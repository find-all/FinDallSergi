// ignore_for_file: implicit_call_tearoffs

import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/localization/app_localizations.dart';
import 'package:fin_dall/core/router/app_router.dart';
import 'package:fin_dall/core/theme/custom_theme.dart';
import 'package:fin_dall/core/utils/custom_break_points.dart';
import 'package:fin_dall/core/widgets/overlay_loader.dart';
import 'package:fin_dall/features/app_language/domain/entities/app_language.dart';
import 'package:fin_dall/features/app_language/presentation/controllers/app_language_controller.dart';
import 'package:fin_dall/features/app_theme/domain/entities/app_theme.dart';
import 'package:fin_dall/features/app_theme/presentation/controllers/app_theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:responsive_framework/responsive_framework.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      duration: const Duration(milliseconds: 300),
      switchInCurve: Curves.easeIn,
      switchOutCurve: Curves.easeOut,
      disableBackButton: true,
      closeOnBackButton: false,
      useDefaultLoading: false,
      overlayWidgetBuilder: (_) => const OverlayLoader(),
      child: ResponsiveBreakpoints.builder(
        breakpoints: [
          const CompactBreakPoint().toBreakPoint,
          const MediumBreakPoint().toBreakPoint,
          const ExpandedBreakPoint().toBreakPoint,
          const LargeBreakPoint().toBreakPoint,
          const ExtraLargeBreakPoint().toBreakPoint,
        ],
        child: Consumer(builder: (context, ref, _) {
          // app router

          final appRouter = ref.watch(appRouterProvider);
          // Listen to the current app theme mode
          final theme = ref.watch(appThemeControllerProvider);

          // Listen to the current app language
          final language = ref.watch(appLanguageControllerProvider);
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerDelegate: AutoRouterDelegate(appRouter,
                navigatorObservers: () => [] //MyObserver()],
                ),
            routeInformationParser: appRouter.defaultRouteParser(),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: S.supportedLocales,
            theme: CustomTheme.light,
            darkTheme: CustomTheme.dark,
            themeMode: switch (theme) {
              LightTheme() => ThemeMode.light,
              DarkTheme() => ThemeMode.dark
            },
            locale: switch (language) {
              Spanish() => const Locale('es', 'ES'),
              English() => const Locale('en', 'US'),
            },
          );
        }),
      ),
    );
  }
}

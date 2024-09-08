import 'package:fin_dall/core/localization/app_localizations.dart';
import 'package:fin_dall/core/utils/custom_break_points.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// Context extension
///
extension ContextExtension on BuildContext {
  /// Width of the screen
  double get width => MediaQuery.sizeOf(this).width;

  /// Height of the screen
  double get height => MediaQuery.sizeOf(this).height;

  /// Return the current theme
  ThemeData get theme => Theme.of(this);

  /// Return the current color scheme
  ColorScheme get colorScheme => theme.colorScheme;

  /// Return the current text theme
  TextTheme get textTheme => theme.textTheme;

  /// Is dark mode enabled
  bool get isDark => theme.brightness == Brightness.dark;

  Orientation get orientation => MediaQuery.of(this).orientation;

  /// Return the current locale
  Locale get locale => Localizations.localeOf(this);

  /// Return localizations
  S get loc => S.of(this)!;

  /// Show a snackbar
  void showSuccessSnackBar({
    required String content,
    Duration? duration,
    void Function()? onClosed,
  }) {
    late EdgeInsets margin;

    if (ResponsiveBreakpoints.of(this)
        .largerThan(const MediumBreakPoint().name)) {
      margin = const EdgeInsets.only(left: 600, bottom: 10, right: 10);
    } else {
      margin = EdgeInsets.symmetric(horizontal: 20, vertical: height * 0.1);
    }

    ScaffoldMessenger.of(this)
        .showSnackBar(
          SnackBar(
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(20),
            content: Text(
              content,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
            margin: margin,
            duration: duration ?? const Duration(seconds: 2),
            backgroundColor: theme.colorScheme.primary,
          ),
        )
        .closed
        .then(
      (reason) {
        onClosed?.call();
      },
    );
  }

  /// Show a snackbar
  void showErrorSnackBar({
    required String content,
  }) {
    late EdgeInsets margin;

    if (ResponsiveBreakpoints.of(this)
        .largerThan(const MediumBreakPoint().name)) {
      margin = EdgeInsets.only(left: width * 0.7, bottom: 10, right: 10);
    } else {
      margin = EdgeInsets.symmetric(horizontal: 20, vertical: height * 0.1);
    }
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(20),
        content: Text(
          content,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onError,
          ),
        ),
        margin: margin,
        backgroundColor: theme.colorScheme.error,
      ),
    );
  }

  /// Dismiss the current snackbar
  void dismissSnackBar() {
    ScaffoldMessenger.of(this).hideCurrentSnackBar();
  }

  /// Responsive value
  ///

  T getResponsiveValue<T>({
    required T compact,
    T? medium,
    T? expanded,
    T? large,
    T? extraLarge,
    T? defaultValue,
  }) {
    switch (this) {
      case _
          when ResponsiveBreakpoints.of(this)
              .equals(const CompactBreakPoint().name):
        return compact;
      case _
          when ResponsiveBreakpoints.of(this)
              .equals(const MediumBreakPoint().name):
        return medium ?? defaultValue ?? compact;
      case _
          when ResponsiveBreakpoints.of(this)
              .equals(const ExpandedBreakPoint().name):
        return expanded ?? defaultValue ?? compact;
      case _
          when ResponsiveBreakpoints.of(this)
              .equals(const LargeBreakPoint().name):
        return large ?? defaultValue ?? compact;
      case _
          when ResponsiveBreakpoints.of(this)
              .equals(const ExtraLargeBreakPoint().name):
        return extraLarge ?? defaultValue ?? compact;

      default:
        return defaultValue ?? compact;
    }
  }

  Widget getResponsiveWidget({
    required Widget compact,
    Widget? medium,
    Widget? expanded,
    Widget? large,
    Widget? extraLarge,
    Widget? defaultWidget,
  }) {
    switch (this) {
      case _
          when ResponsiveBreakpoints.of(this)
              .equals(const CompactBreakPoint().name):
        return compact;
      case _
          when ResponsiveBreakpoints.of(this)
              .equals(const MediumBreakPoint().name):
        return medium ?? defaultWidget ?? compact;
      case _
          when ResponsiveBreakpoints.of(this)
              .equals(const ExpandedBreakPoint().name):
        return expanded ?? defaultWidget ?? compact;
      case _
          when ResponsiveBreakpoints.of(this)
              .equals(const LargeBreakPoint().name):
        return large ?? defaultWidget ?? compact;
      case _
          when ResponsiveBreakpoints.of(this)
              .equals(const ExtraLargeBreakPoint().name):
        return extraLarge ?? defaultWidget ?? compact;

      default:
        return defaultWidget ?? compact;
    }
  }
}

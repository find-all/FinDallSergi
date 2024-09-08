import 'package:fin_dall/core/utils/result.dart';
import 'package:fin_dall/features/app_theme/domain/entities/app_theme.dart';

abstract class AppThemeRepository {
  /// Get the current app theme
  ///
  /// Returns a [Result] with the current [AppTheme]
  ///
  /// If the operation is successful, the [Result] will contain the current [AppTheme]
  ///
  /// If the operation is unsuccessful, the [Result] will contain the error
  ///
  /// If no theme is set, the [Result] will contain the default [LightTheme]
  Future<Result<AppTheme>> getAppTheme();

  /// Set the app theme
  ///
  /// [appTheme] is the new [AppTheme] to be set
  ///
  /// Returns a [Result] with no data
  ///
  /// If the operation is successful, the [Result] will be empty
  ///
  /// If the operation is unsuccessful, the [Result] will contain the error
  ///
  Future<Result<void>> setAppTheme({required AppTheme appTheme});

  /// Clear the app theme
  ///
  /// Returns a [Result] with no data
  ///
  /// If the operation is successful, the [Result] will be empty
  ///
  /// If the operation is unsuccessful, the [Result] will contain the error
  ///
  /// If no theme is set, the [Result] will be empty, there is nothing to clear
  ///
  Future<Result<void>> clearAppTheme();
}

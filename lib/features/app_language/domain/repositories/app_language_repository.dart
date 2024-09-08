import 'package:fin_dall/core/utils/result.dart';
import 'package:fin_dall/features/app_language/domain/entities/app_language.dart';

abstract class AppLanguageRepository {
  /// Get the current app language
  ///
  /// Returns a [Result] with the current [AppLanguage]
  ///
  /// If the operation is successful, the [Result] will contain the current [AppLanguage]
  ///
  /// If the operation is unsuccessful, the [Result] will contain the error
  ///
  /// If no language is set, the [Result] will contain the default [Spanish]
  ///
  Future<Result<AppLanguage>> getAppLanguage();

  /// Set the app language
  ///
  /// [appLanguage] is the new [AppLanguage] to be set
  ///
  /// Returns a [Result] with no data
  ///
  /// If the operation is successful, the [Result] will be empty
  ///
  /// If the operation is unsuccessful, the [Result] will contain the error
  ///
  Future<Result<void>> setAppLanguage({required AppLanguage appLanguage});

  /// Clear the app language
  ///
  /// Returns a [Result] with no data
  ///
  /// If the operation is successful, the [Result] will be empty
  ///
  /// If the operation is unsuccessful, the [Result] will contain the error
  ///
  /// If no language is set, the [Result] will be empty, there is nothing to clear
  ///
  Future<Result<void>> clearAppLanguage();
}

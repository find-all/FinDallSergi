import 'package:fin_dall/core/clients/storage_client/local_storage_client.dart';
import 'package:fin_dall/core/clients/storage_client/shared_preferences_provider.dart';
import 'package:fin_dall/core/clients/storage_client/storage_client.dart';
import 'package:fin_dall/core/constants/storage_constants.dart';
import 'package:fin_dall/core/utils/result.dart';
import 'package:fin_dall/features/app_theme/data/mappers/app_theme_mapper.dart';
import 'package:fin_dall/features/app_theme/data/models/app_theme_model.dart';
import 'package:fin_dall/features/app_theme/domain/entities/app_theme.dart';
import 'package:fin_dall/features/app_theme/domain/repositories/app_theme_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_theme_repository_impl.g.dart';

class AppThemeRepositoryImpl implements AppThemeRepository {
  final StorageClient<AppThemeModel> _localStorageClient;

  AppThemeRepositoryImpl({
    required StorageClient<AppThemeModel> localStorageClient,
  }) : _localStorageClient = localStorageClient;

  @override
  Future<Result<void>> clearAppTheme() => _localStorageClient.delete();

  @override
  Future<Result<AppTheme>> getAppTheme() async {
    final result = await _localStorageClient.read();
    return result.when(
      success: (appThemeModel) =>
          Result.success(AppThemeMapper.toEntity(appThemeModel)),
      error: (error) {
        return Result.success(const LightTheme());
      },
    );
  }

  @override
  Future<Result<void>> setAppTheme({required AppTheme appTheme}) =>
      _localStorageClient.write(AppThemeMapper.fromEntity(appTheme));
}

@riverpod
AppThemeRepository appThemeRepository(AppThemeRepositoryRef ref) {
  final localStorageClient = ref.watch(appThemeLocalStorageProvider);
  return AppThemeRepositoryImpl(localStorageClient: localStorageClient);
}

@riverpod
LocalStorageClient<AppThemeModel> appThemeLocalStorage(
    AppThemeLocalStorageRef ref) {
  final sharedPreferences = ref.watch(sharedPreferencesProvider);

  return LocalStorageClient(
    key: StorageConstants.appThemeKey,
    fromJson: AppThemeModel.fromJson,
    toJson: (data) => data.toJson(),
    sharedPreferences: sharedPreferences,
  );
}

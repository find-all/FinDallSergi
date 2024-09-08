import 'package:fin_dall/core/clients/storage_client/local_storage_client.dart';
import 'package:fin_dall/core/clients/storage_client/shared_preferences_provider.dart';
import 'package:fin_dall/core/clients/storage_client/storage_client.dart';
import 'package:fin_dall/core/constants/storage_constants.dart';
import 'package:fin_dall/core/utils/result.dart';
import 'package:fin_dall/features/app_language/data/mappers/app_language_mapper.dart';
import 'package:fin_dall/features/app_language/data/models/app_language_model.dart';
import 'package:fin_dall/features/app_language/domain/entities/app_language.dart';
import 'package:fin_dall/features/app_language/domain/repositories/app_language_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_language_repository_impl.g.dart';

class AppLanguageRepositoryImpl implements AppLanguageRepository {
  final StorageClient<AppLanguageModel> _localStorageClient;

  AppLanguageRepositoryImpl({
    required StorageClient<AppLanguageModel> localStorageClient,
  }) : _localStorageClient = localStorageClient;

  @override
  Future<Result<void>> clearAppLanguage() => _localStorageClient.delete();

  @override
  Future<Result<AppLanguage>> getAppLanguage() async {
    final result = await _localStorageClient.read();

    return result.when(
      success: (appLanguageModel) =>
          Result.success(AppLanguageMapper.toEntity(appLanguageModel)),
      error: (error) {
        return Result.success(const Spanish());
      },
    );
  }

  @override
  Future<Result<void>> setAppLanguage({required AppLanguage appLanguage}) =>
      _localStorageClient.write(AppLanguageMapper.fromEntity(appLanguage));
}

@riverpod
AppLanguageRepository appLanguageRepository(AppLanguageRepositoryRef ref) {
  final localStorageClient = ref.watch(appLanguageLocalStorageProvider);
  return AppLanguageRepositoryImpl(localStorageClient: localStorageClient);
}

@riverpod
LocalStorageClient<AppLanguageModel> appLanguageLocalStorage(
    AppLanguageLocalStorageRef ref) {
  final sharedPreferences = ref.watch(sharedPreferencesProvider);

  return LocalStorageClient(
    key: StorageConstants.languageKey,
    fromJson: AppLanguageModel.fromJson,
    toJson: (data) => data.toJson(),
    sharedPreferences: sharedPreferences,
  );
}

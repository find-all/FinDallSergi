// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_language_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

typedef AppLanguageRepositoryRef = Ref<AppLanguageRepository>;

@ProviderFor(appLanguageRepository)
const appLanguageRepositoryProvider = AppLanguageRepositoryProvider._();

final class AppLanguageRepositoryProvider extends $FunctionalProvider<
        AppLanguageRepository, AppLanguageRepository, AppLanguageRepositoryRef>
    with $Provider<AppLanguageRepository, AppLanguageRepositoryRef> {
  const AppLanguageRepositoryProvider._(
      {AppLanguageRepository Function(
        AppLanguageRepositoryRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'appLanguageRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final AppLanguageRepository Function(
    AppLanguageRepositoryRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$appLanguageRepositoryHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppLanguageRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<AppLanguageRepository>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<AppLanguageRepository> $createElement(
          ProviderContainer container) =>
      $ProviderElement(this, container);

  @override
  AppLanguageRepositoryProvider $copyWithCreate(
    AppLanguageRepository Function(
      AppLanguageRepositoryRef ref,
    ) create,
  ) {
    return AppLanguageRepositoryProvider._(create: create);
  }

  @override
  AppLanguageRepository create(AppLanguageRepositoryRef ref) {
    final _$cb = _createCb ?? appLanguageRepository;
    return _$cb(ref);
  }
}

String _$appLanguageRepositoryHash() =>
    r'4d268b82c0c0de923cc9355af34646ea4cb2707f';

typedef AppLanguageLocalStorageRef = Ref<LocalStorageClient<AppLanguageModel>>;

@ProviderFor(appLanguageLocalStorage)
const appLanguageLocalStorageProvider = AppLanguageLocalStorageProvider._();

final class AppLanguageLocalStorageProvider extends $FunctionalProvider<
        LocalStorageClient<AppLanguageModel>,
        LocalStorageClient<AppLanguageModel>,
        AppLanguageLocalStorageRef>
    with
        $Provider<LocalStorageClient<AppLanguageModel>,
            AppLanguageLocalStorageRef> {
  const AppLanguageLocalStorageProvider._(
      {LocalStorageClient<AppLanguageModel> Function(
        AppLanguageLocalStorageRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'appLanguageLocalStorageProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final LocalStorageClient<AppLanguageModel> Function(
    AppLanguageLocalStorageRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$appLanguageLocalStorageHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocalStorageClient<AppLanguageModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $ValueProvider<LocalStorageClient<AppLanguageModel>>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<LocalStorageClient<AppLanguageModel>> $createElement(
          ProviderContainer container) =>
      $ProviderElement(this, container);

  @override
  AppLanguageLocalStorageProvider $copyWithCreate(
    LocalStorageClient<AppLanguageModel> Function(
      AppLanguageLocalStorageRef ref,
    ) create,
  ) {
    return AppLanguageLocalStorageProvider._(create: create);
  }

  @override
  LocalStorageClient<AppLanguageModel> create(AppLanguageLocalStorageRef ref) {
    final _$cb = _createCb ?? appLanguageLocalStorage;
    return _$cb(ref);
  }
}

String _$appLanguageLocalStorageHash() =>
    r'd724d0bb4975f5b18f88a8ccb2a41e186f37ba44';

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

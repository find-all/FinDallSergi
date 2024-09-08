// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_theme_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

typedef AppThemeRepositoryRef = Ref<AppThemeRepository>;

@ProviderFor(appThemeRepository)
const appThemeRepositoryProvider = AppThemeRepositoryProvider._();

final class AppThemeRepositoryProvider extends $FunctionalProvider<
        AppThemeRepository, AppThemeRepository, AppThemeRepositoryRef>
    with $Provider<AppThemeRepository, AppThemeRepositoryRef> {
  const AppThemeRepositoryProvider._(
      {AppThemeRepository Function(
        AppThemeRepositoryRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'appThemeRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final AppThemeRepository Function(
    AppThemeRepositoryRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$appThemeRepositoryHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppThemeRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<AppThemeRepository>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<AppThemeRepository> $createElement(
          ProviderContainer container) =>
      $ProviderElement(this, container);

  @override
  AppThemeRepositoryProvider $copyWithCreate(
    AppThemeRepository Function(
      AppThemeRepositoryRef ref,
    ) create,
  ) {
    return AppThemeRepositoryProvider._(create: create);
  }

  @override
  AppThemeRepository create(AppThemeRepositoryRef ref) {
    final _$cb = _createCb ?? appThemeRepository;
    return _$cb(ref);
  }
}

String _$appThemeRepositoryHash() =>
    r'a3dd546d820a2f739f823b98bda102ecf680aa0f';

typedef AppThemeLocalStorageRef = Ref<LocalStorageClient<AppThemeModel>>;

@ProviderFor(appThemeLocalStorage)
const appThemeLocalStorageProvider = AppThemeLocalStorageProvider._();

final class AppThemeLocalStorageProvider extends $FunctionalProvider<
        LocalStorageClient<AppThemeModel>,
        LocalStorageClient<AppThemeModel>,
        AppThemeLocalStorageRef>
    with $Provider<LocalStorageClient<AppThemeModel>, AppThemeLocalStorageRef> {
  const AppThemeLocalStorageProvider._(
      {LocalStorageClient<AppThemeModel> Function(
        AppThemeLocalStorageRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'appThemeLocalStorageProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final LocalStorageClient<AppThemeModel> Function(
    AppThemeLocalStorageRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$appThemeLocalStorageHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocalStorageClient<AppThemeModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $ValueProvider<LocalStorageClient<AppThemeModel>>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<LocalStorageClient<AppThemeModel>> $createElement(
          ProviderContainer container) =>
      $ProviderElement(this, container);

  @override
  AppThemeLocalStorageProvider $copyWithCreate(
    LocalStorageClient<AppThemeModel> Function(
      AppThemeLocalStorageRef ref,
    ) create,
  ) {
    return AppThemeLocalStorageProvider._(create: create);
  }

  @override
  LocalStorageClient<AppThemeModel> create(AppThemeLocalStorageRef ref) {
    final _$cb = _createCb ?? appThemeLocalStorage;
    return _$cb(ref);
  }
}

String _$appThemeLocalStorageHash() =>
    r'c545ce36587a15a5c7656f7719f2f0490b5ce2de';

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_language_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppLanguageController)
const appLanguageControllerProvider = AppLanguageControllerProvider._();

final class AppLanguageControllerProvider
    extends $NotifierProvider<AppLanguageController, AppLanguage> {
  const AppLanguageControllerProvider._(
      {super.runNotifierBuildOverride,
      AppLanguageController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'appLanguageControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final AppLanguageController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$appLanguageControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppLanguage value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<AppLanguage>(value),
    );
  }

  @$internal
  @override
  AppLanguageController create() =>
      _createCb?.call() ?? AppLanguageController();

  @$internal
  @override
  AppLanguageControllerProvider $copyWithCreate(
    AppLanguageController Function() create,
  ) {
    return AppLanguageControllerProvider._(create: create);
  }

  @$internal
  @override
  AppLanguageControllerProvider $copyWithBuild(
    AppLanguage Function(
      Ref<AppLanguage>,
      AppLanguageController,
    ) build,
  ) {
    return AppLanguageControllerProvider._(runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<AppLanguageController, AppLanguage> $createElement(
          ProviderContainer container) =>
      $NotifierProviderElement(this, container);
}

String _$appLanguageControllerHash() =>
    r'30f2391674178d426b7dfc2afe1c08898047bd92';

abstract class _$AppLanguageController extends $Notifier<AppLanguage> {
  AppLanguage build();
  @$internal
  @override
  AppLanguage runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

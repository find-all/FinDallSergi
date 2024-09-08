// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_theme_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppThemeController)
const appThemeControllerProvider = AppThemeControllerProvider._();

final class AppThemeControllerProvider
    extends $NotifierProvider<AppThemeController, AppTheme> {
  const AppThemeControllerProvider._(
      {super.runNotifierBuildOverride, AppThemeController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'appThemeControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final AppThemeController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$appThemeControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppTheme value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<AppTheme>(value),
    );
  }

  @$internal
  @override
  AppThemeController create() => _createCb?.call() ?? AppThemeController();

  @$internal
  @override
  AppThemeControllerProvider $copyWithCreate(
    AppThemeController Function() create,
  ) {
    return AppThemeControllerProvider._(create: create);
  }

  @$internal
  @override
  AppThemeControllerProvider $copyWithBuild(
    AppTheme Function(
      Ref<AppTheme>,
      AppThemeController,
    ) build,
  ) {
    return AppThemeControllerProvider._(runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<AppThemeController, AppTheme> $createElement(
          ProviderContainer container) =>
      $NotifierProviderElement(this, container);
}

String _$appThemeControllerHash() =>
    r'fd50922cad81b187ae0d3c78933e06d888b60a76';

abstract class _$AppThemeController extends $Notifier<AppTheme> {
  AppTheme build();
  @$internal
  @override
  AppTheme runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

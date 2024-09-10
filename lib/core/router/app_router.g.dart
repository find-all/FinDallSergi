// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

typedef AppRouterRef = Ref<AppRouter>;

@ProviderFor(appRouter)
const appRouterProvider = AppRouterProvider._();

final class AppRouterProvider
    extends $FunctionalProvider<AppRouter, AppRouter, AppRouterRef>
    with $Provider<AppRouter, AppRouterRef> {
  const AppRouterProvider._(
      {AppRouter Function(
        AppRouterRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'appRouterProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final AppRouter Function(
    AppRouterRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$appRouterHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppRouter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<AppRouter>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<AppRouter> $createElement(ProviderContainer container) =>
      $ProviderElement(this, container);

  @override
  AppRouterProvider $copyWithCreate(
    AppRouter Function(
      AppRouterRef ref,
    ) create,
  ) {
    return AppRouterProvider._(create: create);
  }

  @override
  AppRouter create(AppRouterRef ref) {
    final _$cb = _createCb ?? appRouter;
    return _$cb(ref);
  }
}

String _$appRouterHash() => r'd4aceb316283cf5b477f18f07d2741ad189dea8f';

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

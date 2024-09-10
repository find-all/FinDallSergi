// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(FavoritesController)
const favoritesControllerProvider = FavoritesControllerProvider._();

final class FavoritesControllerProvider extends $NotifierProvider<
    FavoritesController, ControllerState<List<Favorite>>> {
  const FavoritesControllerProvider._(
      {super.runNotifierBuildOverride, FavoritesController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'favoritesControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final FavoritesController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$favoritesControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ControllerState<List<Favorite>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ControllerState<List<Favorite>>>(value),
    );
  }

  @$internal
  @override
  FavoritesController create() => _createCb?.call() ?? FavoritesController();

  @$internal
  @override
  FavoritesControllerProvider $copyWithCreate(
    FavoritesController Function() create,
  ) {
    return FavoritesControllerProvider._(create: create);
  }

  @$internal
  @override
  FavoritesControllerProvider $copyWithBuild(
    ControllerState<List<Favorite>> Function(
      Ref<ControllerState<List<Favorite>>>,
      FavoritesController,
    ) build,
  ) {
    return FavoritesControllerProvider._(runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<FavoritesController, ControllerState<List<Favorite>>>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);
}

String _$favoritesControllerHash() =>
    r'bcb68d75ead458b3448bda8e2fc20183fb2b11b7';

abstract class _$FavoritesController
    extends $Notifier<ControllerState<List<Favorite>>> {
  ControllerState<List<Favorite>> build();
  @$internal
  @override
  ControllerState<List<Favorite>> runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

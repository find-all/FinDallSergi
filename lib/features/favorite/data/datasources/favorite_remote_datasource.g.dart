// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_remote_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

typedef FavoriteRemoteDatasourceRef = Ref<FavoriteRemoteDatasource>;

@ProviderFor(favoriteRemoteDatasource)
const favoriteRemoteDatasourceProvider = FavoriteRemoteDatasourceProvider._();

final class FavoriteRemoteDatasourceProvider extends $FunctionalProvider<
        FavoriteRemoteDatasource,
        FavoriteRemoteDatasource,
        FavoriteRemoteDatasourceRef>
    with $Provider<FavoriteRemoteDatasource, FavoriteRemoteDatasourceRef> {
  const FavoriteRemoteDatasourceProvider._(
      {FavoriteRemoteDatasource Function(
        FavoriteRemoteDatasourceRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'favoriteRemoteDatasourceProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final FavoriteRemoteDatasource Function(
    FavoriteRemoteDatasourceRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$favoriteRemoteDatasourceHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FavoriteRemoteDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<FavoriteRemoteDatasource>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<FavoriteRemoteDatasource> $createElement(
          ProviderContainer container) =>
      $ProviderElement(this, container);

  @override
  FavoriteRemoteDatasourceProvider $copyWithCreate(
    FavoriteRemoteDatasource Function(
      FavoriteRemoteDatasourceRef ref,
    ) create,
  ) {
    return FavoriteRemoteDatasourceProvider._(create: create);
  }

  @override
  FavoriteRemoteDatasource create(FavoriteRemoteDatasourceRef ref) {
    final _$cb = _createCb ?? favoriteRemoteDatasource;
    return _$cb(ref);
  }
}

String _$favoriteRemoteDatasourceHash() =>
    r'c4fbfc802d007644365dd0f290a92305b42dc4c2';

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

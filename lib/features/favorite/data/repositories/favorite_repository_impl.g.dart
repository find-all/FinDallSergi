// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

typedef FavoriteRepositoryRef = Ref<FavoriteRepository>;

@ProviderFor(favoriteRepository)
const favoriteRepositoryProvider = FavoriteRepositoryProvider._();

final class FavoriteRepositoryProvider extends $FunctionalProvider<
        FavoriteRepository, FavoriteRepository, FavoriteRepositoryRef>
    with $Provider<FavoriteRepository, FavoriteRepositoryRef> {
  const FavoriteRepositoryProvider._(
      {FavoriteRepository Function(
        FavoriteRepositoryRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'favoriteRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final FavoriteRepository Function(
    FavoriteRepositoryRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$favoriteRepositoryHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FavoriteRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<FavoriteRepository>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<FavoriteRepository> $createElement(
          ProviderContainer container) =>
      $ProviderElement(this, container);

  @override
  FavoriteRepositoryProvider $copyWithCreate(
    FavoriteRepository Function(
      FavoriteRepositoryRef ref,
    ) create,
  ) {
    return FavoriteRepositoryProvider._(create: create);
  }

  @override
  FavoriteRepository create(FavoriteRepositoryRef ref) {
    final _$cb = _createCb ?? favoriteRepository;
    return _$cb(ref);
  }
}

String _$favoriteRepositoryHash() =>
    r'2cafdd4a7a2d7db117ed960182d51b86c2cc72f5';

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

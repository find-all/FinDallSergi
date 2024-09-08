// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_remote_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

typedef ProfileRemoteDatasourceRef = Ref<ProfileRemoteDatasource>;

@ProviderFor(profileRemoteDatasource)
const profileRemoteDatasourceProvider = ProfileRemoteDatasourceProvider._();

final class ProfileRemoteDatasourceProvider extends $FunctionalProvider<
        ProfileRemoteDatasource,
        ProfileRemoteDatasource,
        ProfileRemoteDatasourceRef>
    with $Provider<ProfileRemoteDatasource, ProfileRemoteDatasourceRef> {
  const ProfileRemoteDatasourceProvider._(
      {ProfileRemoteDatasource Function(
        ProfileRemoteDatasourceRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'profileRemoteDatasourceProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final ProfileRemoteDatasource Function(
    ProfileRemoteDatasourceRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$profileRemoteDatasourceHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileRemoteDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ProfileRemoteDatasource>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<ProfileRemoteDatasource> $createElement(
          ProviderContainer container) =>
      $ProviderElement(this, container);

  @override
  ProfileRemoteDatasourceProvider $copyWithCreate(
    ProfileRemoteDatasource Function(
      ProfileRemoteDatasourceRef ref,
    ) create,
  ) {
    return ProfileRemoteDatasourceProvider._(create: create);
  }

  @override
  ProfileRemoteDatasource create(ProfileRemoteDatasourceRef ref) {
    final _$cb = _createCb ?? profileRemoteDatasource;
    return _$cb(ref);
  }
}

String _$profileRemoteDatasourceHash() =>
    r'585472cdcc56b1b65709c7087f09a00ce7293e87';

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

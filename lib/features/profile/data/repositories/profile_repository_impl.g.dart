// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

typedef ProfileRepositoryRef = Ref<ProfileRepository>;

@ProviderFor(profileRepository)
const profileRepositoryProvider = ProfileRepositoryProvider._();

final class ProfileRepositoryProvider extends $FunctionalProvider<
        ProfileRepository, ProfileRepository, ProfileRepositoryRef>
    with $Provider<ProfileRepository, ProfileRepositoryRef> {
  const ProfileRepositoryProvider._(
      {ProfileRepository Function(
        ProfileRepositoryRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'profileRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final ProfileRepository Function(
    ProfileRepositoryRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$profileRepositoryHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ProfileRepository>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<ProfileRepository> $createElement(
          ProviderContainer container) =>
      $ProviderElement(this, container);

  @override
  ProfileRepositoryProvider $copyWithCreate(
    ProfileRepository Function(
      ProfileRepositoryRef ref,
    ) create,
  ) {
    return ProfileRepositoryProvider._(create: create);
  }

  @override
  ProfileRepository create(ProfileRepositoryRef ref) {
    final _$cb = _createCb ?? profileRepository;
    return _$cb(ref);
  }
}

String _$profileRepositoryHash() => r'aa21ada709b9207d33ffee8ad1c991907682f7db';

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

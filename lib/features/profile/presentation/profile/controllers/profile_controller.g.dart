// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ProfileController)
const profileControllerProvider = ProfileControllerProvider._();

final class ProfileControllerProvider
    extends $NotifierProvider<ProfileController, ControllerState<Profile>> {
  const ProfileControllerProvider._(
      {super.runNotifierBuildOverride, ProfileController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'profileControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final ProfileController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$profileControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ControllerState<Profile> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ControllerState<Profile>>(value),
    );
  }

  @$internal
  @override
  ProfileController create() => _createCb?.call() ?? ProfileController();

  @$internal
  @override
  ProfileControllerProvider $copyWithCreate(
    ProfileController Function() create,
  ) {
    return ProfileControllerProvider._(create: create);
  }

  @$internal
  @override
  ProfileControllerProvider $copyWithBuild(
    ControllerState<Profile> Function(
      Ref<ControllerState<Profile>>,
      ProfileController,
    ) build,
  ) {
    return ProfileControllerProvider._(runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<ProfileController, ControllerState<Profile>>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);
}

String _$profileControllerHash() => r'ec87fd46621990370b35f8b8132a1e7a29cbc18a';

abstract class _$ProfileController extends $Notifier<ControllerState<Profile>> {
  ControllerState<Profile> build();
  @$internal
  @override
  ControllerState<Profile> runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

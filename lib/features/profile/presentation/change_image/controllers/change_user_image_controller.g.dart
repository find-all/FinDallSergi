// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_user_image_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ChangeUserImageController)
const changeUserImageControllerProvider = ChangeUserImageControllerProvider._();

final class ChangeUserImageControllerProvider extends $NotifierProvider<
    ChangeUserImageController, ControllerState<Profile>> {
  const ChangeUserImageControllerProvider._(
      {super.runNotifierBuildOverride,
      ChangeUserImageController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'changeUserImageControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final ChangeUserImageController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$changeUserImageControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ControllerState<Profile> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ControllerState<Profile>>(value),
    );
  }

  @$internal
  @override
  ChangeUserImageController create() =>
      _createCb?.call() ?? ChangeUserImageController();

  @$internal
  @override
  ChangeUserImageControllerProvider $copyWithCreate(
    ChangeUserImageController Function() create,
  ) {
    return ChangeUserImageControllerProvider._(create: create);
  }

  @$internal
  @override
  ChangeUserImageControllerProvider $copyWithBuild(
    ControllerState<Profile> Function(
      Ref<ControllerState<Profile>>,
      ChangeUserImageController,
    ) build,
  ) {
    return ChangeUserImageControllerProvider._(runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<ChangeUserImageController, ControllerState<Profile>>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);
}

String _$changeUserImageControllerHash() =>
    r'2144130cefc730fc8312a78dd42fcca3e8b47601';

abstract class _$ChangeUserImageController
    extends $Notifier<ControllerState<Profile>> {
  ControllerState<Profile> build();
  @$internal
  @override
  ControllerState<Profile> runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

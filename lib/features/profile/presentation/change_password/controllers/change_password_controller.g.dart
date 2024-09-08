// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ChangePasswordController)
const changePasswordControllerProvider = ChangePasswordControllerProvider._();

final class ChangePasswordControllerProvider extends $NotifierProvider<
    ChangePasswordController, ControllerState<Profile>> {
  const ChangePasswordControllerProvider._(
      {super.runNotifierBuildOverride,
      ChangePasswordController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'changePasswordControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final ChangePasswordController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$changePasswordControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ControllerState<Profile> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ControllerState<Profile>>(value),
    );
  }

  @$internal
  @override
  ChangePasswordController create() =>
      _createCb?.call() ?? ChangePasswordController();

  @$internal
  @override
  ChangePasswordControllerProvider $copyWithCreate(
    ChangePasswordController Function() create,
  ) {
    return ChangePasswordControllerProvider._(create: create);
  }

  @$internal
  @override
  ChangePasswordControllerProvider $copyWithBuild(
    ControllerState<Profile> Function(
      Ref<ControllerState<Profile>>,
      ChangePasswordController,
    ) build,
  ) {
    return ChangePasswordControllerProvider._(runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<ChangePasswordController, ControllerState<Profile>>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);
}

String _$changePasswordControllerHash() =>
    r'75147d44a16920d1ec4551b751153d064f484d35';

abstract class _$ChangePasswordController
    extends $Notifier<ControllerState<Profile>> {
  ControllerState<Profile> build();
  @$internal
  @override
  ControllerState<Profile> runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

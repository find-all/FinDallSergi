// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_account_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(VerifyAccountController)
const verifyAccountControllerProvider = VerifyAccountControllerProvider._();

final class VerifyAccountControllerProvider
    extends $NotifierProvider<VerifyAccountController, ControllerState<User>> {
  const VerifyAccountControllerProvider._(
      {super.runNotifierBuildOverride,
      VerifyAccountController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'verifyAccountControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final VerifyAccountController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$verifyAccountControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ControllerState<User> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ControllerState<User>>(value),
    );
  }

  @$internal
  @override
  VerifyAccountController create() =>
      _createCb?.call() ?? VerifyAccountController();

  @$internal
  @override
  VerifyAccountControllerProvider $copyWithCreate(
    VerifyAccountController Function() create,
  ) {
    return VerifyAccountControllerProvider._(create: create);
  }

  @$internal
  @override
  VerifyAccountControllerProvider $copyWithBuild(
    ControllerState<User> Function(
      Ref<ControllerState<User>>,
      VerifyAccountController,
    ) build,
  ) {
    return VerifyAccountControllerProvider._(runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<VerifyAccountController, ControllerState<User>>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);
}

String _$verifyAccountControllerHash() =>
    r'86f0faf4e12e1358c8bddebb429351da463efbac';

abstract class _$VerifyAccountController
    extends $Notifier<ControllerState<User>> {
  ControllerState<User> build();
  @$internal
  @override
  ControllerState<User> runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

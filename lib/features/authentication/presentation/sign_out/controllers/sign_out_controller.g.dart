// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_out_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(SignOutController)
const signOutControllerProvider = SignOutControllerProvider._();

final class SignOutControllerProvider
    extends $NotifierProvider<SignOutController, ControllerState<void>> {
  const SignOutControllerProvider._(
      {super.runNotifierBuildOverride, SignOutController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'signOutControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final SignOutController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$signOutControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ControllerState<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ControllerState<void>>(value),
    );
  }

  @$internal
  @override
  SignOutController create() => _createCb?.call() ?? SignOutController();

  @$internal
  @override
  SignOutControllerProvider $copyWithCreate(
    SignOutController Function() create,
  ) {
    return SignOutControllerProvider._(create: create);
  }

  @$internal
  @override
  SignOutControllerProvider $copyWithBuild(
    ControllerState<void> Function(
      Ref<ControllerState<void>>,
      SignOutController,
    ) build,
  ) {
    return SignOutControllerProvider._(runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<SignOutController, ControllerState<void>>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);
}

String _$signOutControllerHash() => r'813894c2ec700b56d3581f857fb6b56bafc6daeb';

abstract class _$SignOutController extends $Notifier<ControllerState<void>> {
  ControllerState<void> build();
  @$internal
  @override
  ControllerState<void> runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

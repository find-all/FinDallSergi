// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ResetPasswordController)
const resetPasswordControllerProvider = ResetPasswordControllerProvider._();

final class ResetPasswordControllerProvider
    extends $NotifierProvider<ResetPasswordController, ControllerState<void>> {
  const ResetPasswordControllerProvider._(
      {super.runNotifierBuildOverride,
      ResetPasswordController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'resetPasswordControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final ResetPasswordController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$resetPasswordControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ControllerState<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ControllerState<void>>(value),
    );
  }

  @$internal
  @override
  ResetPasswordController create() =>
      _createCb?.call() ?? ResetPasswordController();

  @$internal
  @override
  ResetPasswordControllerProvider $copyWithCreate(
    ResetPasswordController Function() create,
  ) {
    return ResetPasswordControllerProvider._(create: create);
  }

  @$internal
  @override
  ResetPasswordControllerProvider $copyWithBuild(
    ControllerState<void> Function(
      Ref<ControllerState<void>>,
      ResetPasswordController,
    ) build,
  ) {
    return ResetPasswordControllerProvider._(runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<ResetPasswordController, ControllerState<void>>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);
}

String _$resetPasswordControllerHash() =>
    r'6660af61a79e15a2fe38b6321cbf372b01cd6e43';

abstract class _$ResetPasswordController
    extends $Notifier<ControllerState<void>> {
  ControllerState<void> build();
  @$internal
  @override
  ControllerState<void> runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

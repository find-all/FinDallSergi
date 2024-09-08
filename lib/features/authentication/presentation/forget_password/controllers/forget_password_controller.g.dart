// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ForgetPasswordController)
const forgetPasswordControllerProvider = ForgetPasswordControllerProvider._();

final class ForgetPasswordControllerProvider extends $NotifierProvider<
    ForgetPasswordController, ControllerState<String>> {
  const ForgetPasswordControllerProvider._(
      {super.runNotifierBuildOverride,
      ForgetPasswordController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'forgetPasswordControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final ForgetPasswordController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$forgetPasswordControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ControllerState<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ControllerState<String>>(value),
    );
  }

  @$internal
  @override
  ForgetPasswordController create() =>
      _createCb?.call() ?? ForgetPasswordController();

  @$internal
  @override
  ForgetPasswordControllerProvider $copyWithCreate(
    ForgetPasswordController Function() create,
  ) {
    return ForgetPasswordControllerProvider._(create: create);
  }

  @$internal
  @override
  ForgetPasswordControllerProvider $copyWithBuild(
    ControllerState<String> Function(
      Ref<ControllerState<String>>,
      ForgetPasswordController,
    ) build,
  ) {
    return ForgetPasswordControllerProvider._(runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<ForgetPasswordController, ControllerState<String>>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);
}

String _$forgetPasswordControllerHash() =>
    r'47ea93a0ad035f2461ac6b381d0bd5c349f6a4af';

abstract class _$ForgetPasswordController
    extends $Notifier<ControllerState<String>> {
  ControllerState<String> build();
  @$internal
  @override
  ControllerState<String> runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

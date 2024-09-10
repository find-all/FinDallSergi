// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_code_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ResendCodeController)
const resendCodeControllerProvider = ResendCodeControllerProvider._();

final class ResendCodeControllerProvider
    extends $NotifierProvider<ResendCodeController, ControllerState<String>> {
  const ResendCodeControllerProvider._(
      {super.runNotifierBuildOverride, ResendCodeController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'resendCodeControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final ResendCodeController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$resendCodeControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ControllerState<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ControllerState<String>>(value),
    );
  }

  @$internal
  @override
  ResendCodeController create() => _createCb?.call() ?? ResendCodeController();

  @$internal
  @override
  ResendCodeControllerProvider $copyWithCreate(
    ResendCodeController Function() create,
  ) {
    return ResendCodeControllerProvider._(create: create);
  }

  @$internal
  @override
  ResendCodeControllerProvider $copyWithBuild(
    ControllerState<String> Function(
      Ref<ControllerState<String>>,
      ResendCodeController,
    ) build,
  ) {
    return ResendCodeControllerProvider._(runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<ResendCodeController, ControllerState<String>>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);
}

String _$resendCodeControllerHash() =>
    r'324f704a9fc696de32c70b2e69e891f34b044fb4';

abstract class _$ResendCodeController
    extends $Notifier<ControllerState<String>> {
  ControllerState<String> build();
  @$internal
  @override
  ControllerState<String> runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

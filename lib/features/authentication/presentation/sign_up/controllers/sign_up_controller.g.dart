// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(SignUpController)
const signUpControllerProvider = SignUpControllerProvider._();

final class SignUpControllerProvider extends $NotifierProvider<SignUpController,
    ControllerState<({String email, String token})>> {
  const SignUpControllerProvider._(
      {super.runNotifierBuildOverride, SignUpController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'signUpControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final SignUpController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$signUpControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(
      ControllerState<({String email, String token})> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $ValueProvider<ControllerState<({String email, String token})>>(
              value),
    );
  }

  @$internal
  @override
  SignUpController create() => _createCb?.call() ?? SignUpController();

  @$internal
  @override
  SignUpControllerProvider $copyWithCreate(
    SignUpController Function() create,
  ) {
    return SignUpControllerProvider._(create: create);
  }

  @$internal
  @override
  SignUpControllerProvider $copyWithBuild(
    ControllerState<({String email, String token})> Function(
      Ref<ControllerState<({String email, String token})>>,
      SignUpController,
    ) build,
  ) {
    return SignUpControllerProvider._(runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<SignUpController,
      ControllerState<({String email, String token})>> $createElement(
          ProviderContainer container) =>
      $NotifierProviderElement(this, container);
}

String _$signUpControllerHash() => r'ee2c7980935964a150548b56cf2936bc30bb3ddf';

abstract class _$SignUpController
    extends $Notifier<ControllerState<({String email, String token})>> {
  ControllerState<({String email, String token})> build();
  @$internal
  @override
  ControllerState<({String email, String token})> runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

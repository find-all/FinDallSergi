// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(SignInController)
const signInControllerProvider = SignInControllerProvider._();

final class SignInControllerProvider
    extends $NotifierProvider<SignInController, SignInState> {
  const SignInControllerProvider._(
      {super.runNotifierBuildOverride, SignInController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'signInControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final SignInController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$signInControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignInState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<SignInState>(value),
    );
  }

  @$internal
  @override
  SignInController create() => _createCb?.call() ?? SignInController();

  @$internal
  @override
  SignInControllerProvider $copyWithCreate(
    SignInController Function() create,
  ) {
    return SignInControllerProvider._(create: create);
  }

  @$internal
  @override
  SignInControllerProvider $copyWithBuild(
    SignInState Function(
      Ref<SignInState>,
      SignInController,
    ) build,
  ) {
    return SignInControllerProvider._(runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<SignInController, SignInState> $createElement(
          ProviderContainer container) =>
      $NotifierProviderElement(this, container);
}

String _$signInControllerHash() => r'1c043b3d96b52f9f50eb7644df5884c31eaba8d1';

abstract class _$SignInController extends $Notifier<SignInState> {
  SignInState build();
  @$internal
  @override
  SignInState runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(SignInFormController)
const signInFormControllerProvider = SignInFormControllerProvider._();

final class SignInFormControllerProvider
    extends $NotifierProvider<SignInFormController, SignInFormState> {
  const SignInFormControllerProvider._(
      {super.runNotifierBuildOverride, SignInFormController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'signInFormControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final SignInFormController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$signInFormControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignInFormState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<SignInFormState>(value),
    );
  }

  @$internal
  @override
  SignInFormController create() => _createCb?.call() ?? SignInFormController();

  @$internal
  @override
  SignInFormControllerProvider $copyWithCreate(
    SignInFormController Function() create,
  ) {
    return SignInFormControllerProvider._(create: create);
  }

  @$internal
  @override
  SignInFormControllerProvider $copyWithBuild(
    SignInFormState Function(
      Ref<SignInFormState>,
      SignInFormController,
    ) build,
  ) {
    return SignInFormControllerProvider._(runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<SignInFormController, SignInFormState>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);
}

String _$signInFormControllerHash() =>
    r'a1758abba317c02f6e864f655b5a94b2a4b280d2';

abstract class _$SignInFormController extends $Notifier<SignInFormState> {
  SignInFormState build();
  @$internal
  @override
  SignInFormState runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

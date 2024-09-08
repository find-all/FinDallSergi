// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(SignUpFormController)
const signUpFormControllerProvider = SignUpFormControllerProvider._();

final class SignUpFormControllerProvider
    extends $NotifierProvider<SignUpFormController, SignUpFormState> {
  const SignUpFormControllerProvider._(
      {super.runNotifierBuildOverride, SignUpFormController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'signUpFormControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final SignUpFormController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$signUpFormControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignUpFormState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<SignUpFormState>(value),
    );
  }

  @$internal
  @override
  SignUpFormController create() => _createCb?.call() ?? SignUpFormController();

  @$internal
  @override
  SignUpFormControllerProvider $copyWithCreate(
    SignUpFormController Function() create,
  ) {
    return SignUpFormControllerProvider._(create: create);
  }

  @$internal
  @override
  SignUpFormControllerProvider $copyWithBuild(
    SignUpFormState Function(
      Ref<SignUpFormState>,
      SignUpFormController,
    ) build,
  ) {
    return SignUpFormControllerProvider._(runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<SignUpFormController, SignUpFormState>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);
}

String _$signUpFormControllerHash() =>
    r'1c9b68b5d3db7b67ed6544c597e96049e84b4cf9';

abstract class _$SignUpFormController extends $Notifier<SignUpFormState> {
  SignUpFormState build();
  @$internal
  @override
  SignUpFormState runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

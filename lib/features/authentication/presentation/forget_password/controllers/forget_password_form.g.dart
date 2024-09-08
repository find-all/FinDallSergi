// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password_form.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ForgetPasswordFormController)
const forgetPasswordFormControllerProvider =
    ForgetPasswordFormControllerProvider._();

final class ForgetPasswordFormControllerProvider extends $NotifierProvider<
    ForgetPasswordFormController, ForgetPasswordFormState> {
  const ForgetPasswordFormControllerProvider._(
      {super.runNotifierBuildOverride,
      ForgetPasswordFormController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'forgetPasswordFormControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final ForgetPasswordFormController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$forgetPasswordFormControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ForgetPasswordFormState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ForgetPasswordFormState>(value),
    );
  }

  @$internal
  @override
  ForgetPasswordFormController create() =>
      _createCb?.call() ?? ForgetPasswordFormController();

  @$internal
  @override
  ForgetPasswordFormControllerProvider $copyWithCreate(
    ForgetPasswordFormController Function() create,
  ) {
    return ForgetPasswordFormControllerProvider._(create: create);
  }

  @$internal
  @override
  ForgetPasswordFormControllerProvider $copyWithBuild(
    ForgetPasswordFormState Function(
      Ref<ForgetPasswordFormState>,
      ForgetPasswordFormController,
    ) build,
  ) {
    return ForgetPasswordFormControllerProvider._(
        runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<ForgetPasswordFormController,
      ForgetPasswordFormState> $createElement(
          ProviderContainer container) =>
      $NotifierProviderElement(this, container);
}

String _$forgetPasswordFormControllerHash() =>
    r'5eae63ac40e24316b889ba556d228b09c76be16a';

abstract class _$ForgetPasswordFormController
    extends $Notifier<ForgetPasswordFormState> {
  ForgetPasswordFormState build();
  @$internal
  @override
  ForgetPasswordFormState runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

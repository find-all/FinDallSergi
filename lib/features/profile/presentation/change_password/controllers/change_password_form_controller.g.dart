// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ChangePasswordFormController)
const changePasswordFormControllerProvider =
    ChangePasswordFormControllerProvider._();

final class ChangePasswordFormControllerProvider extends $NotifierProvider<
    ChangePasswordFormController, ChangePasswordFormState> {
  const ChangePasswordFormControllerProvider._(
      {super.runNotifierBuildOverride,
      ChangePasswordFormController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'changePasswordFormControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final ChangePasswordFormController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$changePasswordFormControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChangePasswordFormState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ChangePasswordFormState>(value),
    );
  }

  @$internal
  @override
  ChangePasswordFormController create() =>
      _createCb?.call() ?? ChangePasswordFormController();

  @$internal
  @override
  ChangePasswordFormControllerProvider $copyWithCreate(
    ChangePasswordFormController Function() create,
  ) {
    return ChangePasswordFormControllerProvider._(create: create);
  }

  @$internal
  @override
  ChangePasswordFormControllerProvider $copyWithBuild(
    ChangePasswordFormState Function(
      Ref<ChangePasswordFormState>,
      ChangePasswordFormController,
    ) build,
  ) {
    return ChangePasswordFormControllerProvider._(
        runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<ChangePasswordFormController,
      ChangePasswordFormState> $createElement(
          ProviderContainer container) =>
      $NotifierProviderElement(this, container);
}

String _$changePasswordFormControllerHash() =>
    r'9181f6dd5831e136eadfbcce666cf2e0e12e7b56';

abstract class _$ChangePasswordFormController
    extends $Notifier<ChangePasswordFormState> {
  ChangePasswordFormState build();
  @$internal
  @override
  ChangePasswordFormState runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

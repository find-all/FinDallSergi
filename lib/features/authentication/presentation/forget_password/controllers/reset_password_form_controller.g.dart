// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ResetPasswordFormController)
const resetPasswordFormControllerProvider =
    ResetPasswordFormControllerProvider._();

final class ResetPasswordFormControllerProvider extends $NotifierProvider<
    ResetPasswordFormController, ResetPasswordFormState> {
  const ResetPasswordFormControllerProvider._(
      {super.runNotifierBuildOverride,
      ResetPasswordFormController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'resetPasswordFormControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final ResetPasswordFormController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$resetPasswordFormControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ResetPasswordFormState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ResetPasswordFormState>(value),
    );
  }

  @$internal
  @override
  ResetPasswordFormController create() =>
      _createCb?.call() ?? ResetPasswordFormController();

  @$internal
  @override
  ResetPasswordFormControllerProvider $copyWithCreate(
    ResetPasswordFormController Function() create,
  ) {
    return ResetPasswordFormControllerProvider._(create: create);
  }

  @$internal
  @override
  ResetPasswordFormControllerProvider $copyWithBuild(
    ResetPasswordFormState Function(
      Ref<ResetPasswordFormState>,
      ResetPasswordFormController,
    ) build,
  ) {
    return ResetPasswordFormControllerProvider._(
        runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<ResetPasswordFormController, ResetPasswordFormState>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);
}

String _$resetPasswordFormControllerHash() =>
    r'05ca4877ce0b546830610fe43afd15879cbf04a5';

abstract class _$ResetPasswordFormController
    extends $Notifier<ResetPasswordFormState> {
  ResetPasswordFormState build();
  @$internal
  @override
  ResetPasswordFormState runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

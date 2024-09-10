// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_local_auth_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(CheckLocalAuthController)
const checkLocalAuthControllerProvider = CheckLocalAuthControllerProvider._();

final class CheckLocalAuthControllerProvider extends $NotifierProvider<
    CheckLocalAuthController, CheckLocalAuthControllerState> {
  const CheckLocalAuthControllerProvider._(
      {super.runNotifierBuildOverride,
      CheckLocalAuthController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'checkLocalAuthControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final CheckLocalAuthController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$checkLocalAuthControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CheckLocalAuthControllerState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<CheckLocalAuthControllerState>(value),
    );
  }

  @$internal
  @override
  CheckLocalAuthController create() =>
      _createCb?.call() ?? CheckLocalAuthController();

  @$internal
  @override
  CheckLocalAuthControllerProvider $copyWithCreate(
    CheckLocalAuthController Function() create,
  ) {
    return CheckLocalAuthControllerProvider._(create: create);
  }

  @$internal
  @override
  CheckLocalAuthControllerProvider $copyWithBuild(
    CheckLocalAuthControllerState Function(
      Ref<CheckLocalAuthControllerState>,
      CheckLocalAuthController,
    ) build,
  ) {
    return CheckLocalAuthControllerProvider._(runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<CheckLocalAuthController,
      CheckLocalAuthControllerState> $createElement(
          ProviderContainer container) =>
      $NotifierProviderElement(this, container);
}

String _$checkLocalAuthControllerHash() =>
    r'80b47116512c5b8b862686c8e7bf98ca87d7667a';

abstract class _$CheckLocalAuthController
    extends $Notifier<CheckLocalAuthControllerState> {
  CheckLocalAuthControllerState build();
  @$internal
  @override
  CheckLocalAuthControllerState runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

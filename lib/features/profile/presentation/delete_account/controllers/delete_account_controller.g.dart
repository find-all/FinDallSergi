// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_account_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(DeleteAccountController)
const deleteAccountControllerProvider = DeleteAccountControllerProvider._();

final class DeleteAccountControllerProvider
    extends $NotifierProvider<DeleteAccountController, ControllerState<void>> {
  const DeleteAccountControllerProvider._(
      {super.runNotifierBuildOverride,
      DeleteAccountController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'deleteAccountControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final DeleteAccountController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$deleteAccountControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ControllerState<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ControllerState<void>>(value),
    );
  }

  @$internal
  @override
  DeleteAccountController create() =>
      _createCb?.call() ?? DeleteAccountController();

  @$internal
  @override
  DeleteAccountControllerProvider $copyWithCreate(
    DeleteAccountController Function() create,
  ) {
    return DeleteAccountControllerProvider._(create: create);
  }

  @$internal
  @override
  DeleteAccountControllerProvider $copyWithBuild(
    ControllerState<void> Function(
      Ref<ControllerState<void>>,
      DeleteAccountController,
    ) build,
  ) {
    return DeleteAccountControllerProvider._(runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<DeleteAccountController, ControllerState<void>>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);
}

String _$deleteAccountControllerHash() =>
    r'dff51befcb740daef99cf2c8d7a062148ef2d745';

abstract class _$DeleteAccountController
    extends $Notifier<ControllerState<void>> {
  ControllerState<void> build();
  @$internal
  @override
  ControllerState<void> runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clear_chat_history_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ClearChatHistoryController)
const clearChatHistoryControllerProvider =
    ClearChatHistoryControllerProvider._();

final class ClearChatHistoryControllerProvider extends $NotifierProvider<
    ClearChatHistoryController, ControllerState<void>> {
  const ClearChatHistoryControllerProvider._(
      {super.runNotifierBuildOverride,
      ClearChatHistoryController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'clearChatHistoryControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final ClearChatHistoryController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$clearChatHistoryControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ControllerState<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ControllerState<void>>(value),
    );
  }

  @$internal
  @override
  ClearChatHistoryController create() =>
      _createCb?.call() ?? ClearChatHistoryController();

  @$internal
  @override
  ClearChatHistoryControllerProvider $copyWithCreate(
    ClearChatHistoryController Function() create,
  ) {
    return ClearChatHistoryControllerProvider._(create: create);
  }

  @$internal
  @override
  ClearChatHistoryControllerProvider $copyWithBuild(
    ControllerState<void> Function(
      Ref<ControllerState<void>>,
      ClearChatHistoryController,
    ) build,
  ) {
    return ClearChatHistoryControllerProvider._(
        runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<ClearChatHistoryController, ControllerState<void>>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);
}

String _$clearChatHistoryControllerHash() =>
    r'2c43a20255ab758dd4bac6d9848c6ccdf90c8b3b';

abstract class _$ClearChatHistoryController
    extends $Notifier<ControllerState<void>> {
  ControllerState<void> build();
  @$internal
  @override
  ControllerState<void> runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

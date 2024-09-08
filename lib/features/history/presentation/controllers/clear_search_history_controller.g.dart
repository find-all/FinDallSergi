// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clear_search_history_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ClearSearchHistoryController)
const clearSearchHistoryControllerProvider =
    ClearSearchHistoryControllerProvider._();

final class ClearSearchHistoryControllerProvider extends $NotifierProvider<
    ClearSearchHistoryController, ControllerState<void>> {
  const ClearSearchHistoryControllerProvider._(
      {super.runNotifierBuildOverride,
      ClearSearchHistoryController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'clearSearchHistoryControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final ClearSearchHistoryController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$clearSearchHistoryControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ControllerState<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ControllerState<void>>(value),
    );
  }

  @$internal
  @override
  ClearSearchHistoryController create() =>
      _createCb?.call() ?? ClearSearchHistoryController();

  @$internal
  @override
  ClearSearchHistoryControllerProvider $copyWithCreate(
    ClearSearchHistoryController Function() create,
  ) {
    return ClearSearchHistoryControllerProvider._(create: create);
  }

  @$internal
  @override
  ClearSearchHistoryControllerProvider $copyWithBuild(
    ControllerState<void> Function(
      Ref<ControllerState<void>>,
      ClearSearchHistoryController,
    ) build,
  ) {
    return ClearSearchHistoryControllerProvider._(
        runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<ClearSearchHistoryController, ControllerState<void>>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);
}

String _$clearSearchHistoryControllerHash() =>
    r'c4f68f9e707593701d858c96632a61f2f6638de1';

abstract class _$ClearSearchHistoryController
    extends $Notifier<ControllerState<void>> {
  ControllerState<void> build();
  @$internal
  @override
  ControllerState<void> runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

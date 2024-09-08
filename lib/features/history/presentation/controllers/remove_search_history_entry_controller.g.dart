// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_search_history_entry_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(RemoveSearchHistoryEntryController)
const removeSearchHistoryEntryControllerProvider =
    RemoveSearchHistoryEntryControllerFamily._();

final class RemoveSearchHistoryEntryControllerProvider
    extends $NotifierProvider<RemoveSearchHistoryEntryController,
        ControllerState<SearchHistoryEntry>> {
  const RemoveSearchHistoryEntryControllerProvider._(
      {required RemoveSearchHistoryEntryControllerFamily super.from,
      required String super.argument,
      super.runNotifierBuildOverride,
      RemoveSearchHistoryEntryController Function()? create})
      : _createCb = create,
        super(
          name: r'removeSearchHistoryEntryControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final RemoveSearchHistoryEntryController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() =>
      _$removeSearchHistoryEntryControllerHash();

  @override
  String toString() {
    return r'removeSearchHistoryEntryControllerProvider'
        ''
        '($argument)';
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ControllerState<SearchHistoryEntry> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $ValueProvider<ControllerState<SearchHistoryEntry>>(value),
    );
  }

  @$internal
  @override
  RemoveSearchHistoryEntryController create() =>
      _createCb?.call() ?? RemoveSearchHistoryEntryController();

  @$internal
  @override
  RemoveSearchHistoryEntryControllerProvider $copyWithCreate(
    RemoveSearchHistoryEntryController Function() create,
  ) {
    return RemoveSearchHistoryEntryControllerProvider._(
        argument: argument as String,
        from: from! as RemoveSearchHistoryEntryControllerFamily,
        create: create);
  }

  @$internal
  @override
  RemoveSearchHistoryEntryControllerProvider $copyWithBuild(
    ControllerState<SearchHistoryEntry> Function(
      Ref<ControllerState<SearchHistoryEntry>>,
      RemoveSearchHistoryEntryController,
    ) build,
  ) {
    return RemoveSearchHistoryEntryControllerProvider._(
        argument: argument as String,
        from: from! as RemoveSearchHistoryEntryControllerFamily,
        runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<RemoveSearchHistoryEntryController,
      ControllerState<SearchHistoryEntry>> $createElement(
          ProviderContainer container) =>
      $NotifierProviderElement(this, container);

  @override
  bool operator ==(Object other) {
    return other is RemoveSearchHistoryEntryControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$removeSearchHistoryEntryControllerHash() =>
    r'caac062b8df0fa459e70076e79a61e835ef53308';

final class RemoveSearchHistoryEntryControllerFamily extends Family {
  const RemoveSearchHistoryEntryControllerFamily._()
      : super(
          name: r'removeSearchHistoryEntryControllerProvider',
          dependencies: null,
          allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  RemoveSearchHistoryEntryControllerProvider call({
    required String id,
  }) =>
      RemoveSearchHistoryEntryControllerProvider._(argument: id, from: this);

  @override
  String debugGetCreateSourceHash() =>
      _$removeSearchHistoryEntryControllerHash();

  @override
  String toString() => r'removeSearchHistoryEntryControllerProvider';

  /// {@macro riverpod.override_with}
  Override overrideWith(
    RemoveSearchHistoryEntryController Function(
      String args,
    ) create,
  ) {
    return $FamilyOverride(
      from: this,
      createElement: (container, provider) {
        provider as RemoveSearchHistoryEntryControllerProvider;

        final argument = provider.argument as String;

        return provider
            .$copyWithCreate(() => create(argument))
            .$createElement(container);
      },
    );
  }

  /// {@macro riverpod.override_with_build}
  Override overrideWithBuild(
    ControllerState<SearchHistoryEntry> Function(
            Ref<ControllerState<SearchHistoryEntry>> ref,
            RemoveSearchHistoryEntryController notifier,
            String argument)
        build,
  ) {
    return $FamilyOverride(
      from: this,
      createElement: (container, provider) {
        provider as RemoveSearchHistoryEntryControllerProvider;

        final argument = provider.argument as String;

        return provider
            .$copyWithBuild((ref, notifier) => build(ref, notifier, argument))
            .$createElement(container);
      },
    );
  }
}

abstract class _$RemoveSearchHistoryEntryController
    extends $Notifier<ControllerState<SearchHistoryEntry>> {
  late final _$args =
      (ref as $NotifierProviderElement).origin.argument as String;
  String get id => _$args;

  ControllerState<SearchHistoryEntry> build({
    required String id,
  });
  @$internal
  @override
  ControllerState<SearchHistoryEntry> runBuild() => build(
        id: _$args,
      );
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

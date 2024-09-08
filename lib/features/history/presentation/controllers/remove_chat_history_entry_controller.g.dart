// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_chat_history_entry_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(RemoveChatHistoryEntryController)
const removeChatHistoryEntryControllerProvider =
    RemoveChatHistoryEntryControllerFamily._();

final class RemoveChatHistoryEntryControllerProvider extends $NotifierProvider<
    RemoveChatHistoryEntryController, ControllerState<ChatHistoryEntry>> {
  const RemoveChatHistoryEntryControllerProvider._(
      {required RemoveChatHistoryEntryControllerFamily super.from,
      required String super.argument,
      super.runNotifierBuildOverride,
      RemoveChatHistoryEntryController Function()? create})
      : _createCb = create,
        super(
          name: r'removeChatHistoryEntryControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final RemoveChatHistoryEntryController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$removeChatHistoryEntryControllerHash();

  @override
  String toString() {
    return r'removeChatHistoryEntryControllerProvider'
        ''
        '($argument)';
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ControllerState<ChatHistoryEntry> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $ValueProvider<ControllerState<ChatHistoryEntry>>(value),
    );
  }

  @$internal
  @override
  RemoveChatHistoryEntryController create() =>
      _createCb?.call() ?? RemoveChatHistoryEntryController();

  @$internal
  @override
  RemoveChatHistoryEntryControllerProvider $copyWithCreate(
    RemoveChatHistoryEntryController Function() create,
  ) {
    return RemoveChatHistoryEntryControllerProvider._(
        argument: argument as String,
        from: from! as RemoveChatHistoryEntryControllerFamily,
        create: create);
  }

  @$internal
  @override
  RemoveChatHistoryEntryControllerProvider $copyWithBuild(
    ControllerState<ChatHistoryEntry> Function(
      Ref<ControllerState<ChatHistoryEntry>>,
      RemoveChatHistoryEntryController,
    ) build,
  ) {
    return RemoveChatHistoryEntryControllerProvider._(
        argument: argument as String,
        from: from! as RemoveChatHistoryEntryControllerFamily,
        runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<RemoveChatHistoryEntryController,
      ControllerState<ChatHistoryEntry>> $createElement(
          ProviderContainer container) =>
      $NotifierProviderElement(this, container);

  @override
  bool operator ==(Object other) {
    return other is RemoveChatHistoryEntryControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$removeChatHistoryEntryControllerHash() =>
    r'281f1ffa3c1a5c432b8ea8646f170caea13405be';

final class RemoveChatHistoryEntryControllerFamily extends Family {
  const RemoveChatHistoryEntryControllerFamily._()
      : super(
          name: r'removeChatHistoryEntryControllerProvider',
          dependencies: null,
          allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  RemoveChatHistoryEntryControllerProvider call({
    required String id,
  }) =>
      RemoveChatHistoryEntryControllerProvider._(argument: id, from: this);

  @override
  String debugGetCreateSourceHash() => _$removeChatHistoryEntryControllerHash();

  @override
  String toString() => r'removeChatHistoryEntryControllerProvider';

  /// {@macro riverpod.override_with}
  Override overrideWith(
    RemoveChatHistoryEntryController Function(
      String args,
    ) create,
  ) {
    return $FamilyOverride(
      from: this,
      createElement: (container, provider) {
        provider as RemoveChatHistoryEntryControllerProvider;

        final argument = provider.argument as String;

        return provider
            .$copyWithCreate(() => create(argument))
            .$createElement(container);
      },
    );
  }

  /// {@macro riverpod.override_with_build}
  Override overrideWithBuild(
    ControllerState<ChatHistoryEntry> Function(
            Ref<ControllerState<ChatHistoryEntry>> ref,
            RemoveChatHistoryEntryController notifier,
            String argument)
        build,
  ) {
    return $FamilyOverride(
      from: this,
      createElement: (container, provider) {
        provider as RemoveChatHistoryEntryControllerProvider;

        final argument = provider.argument as String;

        return provider
            .$copyWithBuild((ref, notifier) => build(ref, notifier, argument))
            .$createElement(container);
      },
    );
  }
}

abstract class _$RemoveChatHistoryEntryController
    extends $Notifier<ControllerState<ChatHistoryEntry>> {
  late final _$args =
      (ref as $NotifierProviderElement).origin.argument as String;
  String get id => _$args;

  ControllerState<ChatHistoryEntry> build({
    required String id,
  });
  @$internal
  @override
  ControllerState<ChatHistoryEntry> runBuild() => build(
        id: _$args,
      );
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

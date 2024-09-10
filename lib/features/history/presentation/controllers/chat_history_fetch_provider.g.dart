// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_history_fetch_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

typedef ChatHistoryFetchRef = Ref<
    Future<Result<List<ChatHistoryEntry>>> Function(int page, int pageSize)>;

@ProviderFor(chatHistoryFetch)
const chatHistoryFetchProvider = ChatHistoryFetchProvider._();

final class ChatHistoryFetchProvider extends $FunctionalProvider<
        Future<Result<List<ChatHistoryEntry>>> Function(int page, int pageSize),
        Future<Result<List<ChatHistoryEntry>>> Function(int page, int pageSize),
        ChatHistoryFetchRef>
    with
        $Provider<
            Future<Result<List<ChatHistoryEntry>>> Function(
                int page, int pageSize),
            ChatHistoryFetchRef> {
  const ChatHistoryFetchProvider._(
      {Future<Result<List<ChatHistoryEntry>>> Function(int page, int pageSize)
          Function(
        ChatHistoryFetchRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'chatHistoryFetchProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final Future<Result<List<ChatHistoryEntry>>> Function(int page, int pageSize)
      Function(
    ChatHistoryFetchRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$chatHistoryFetchHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(
      Future<Result<List<ChatHistoryEntry>>> Function(int page, int pageSize)
          value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<
          Future<Result<List<ChatHistoryEntry>>> Function(
              int page, int pageSize)>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<
          Future<Result<List<ChatHistoryEntry>>> Function(
              int page, int pageSize)>
      $createElement(ProviderContainer container) =>
          $ProviderElement(this, container);

  @override
  ChatHistoryFetchProvider $copyWithCreate(
    Future<Result<List<ChatHistoryEntry>>> Function(int page, int pageSize)
        Function(
      ChatHistoryFetchRef ref,
    ) create,
  ) {
    return ChatHistoryFetchProvider._(create: create);
  }

  @override
  Future<Result<List<ChatHistoryEntry>>> Function(int page, int pageSize)
      create(ChatHistoryFetchRef ref) {
    final _$cb = _createCb ?? chatHistoryFetch;
    return _$cb(ref);
  }
}

String _$chatHistoryFetchHash() => r'edcf260bede4a1016c3c7d9a043e590bc2a9e295';

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

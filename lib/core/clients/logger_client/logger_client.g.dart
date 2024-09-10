// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logger_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

typedef LoggerClientRef = Ref<Talker>;

@ProviderFor(loggerClient)
const loggerClientProvider = LoggerClientProvider._();

final class LoggerClientProvider
    extends $FunctionalProvider<Talker, Talker, LoggerClientRef>
    with $Provider<Talker, LoggerClientRef> {
  const LoggerClientProvider._(
      {Talker Function(
        LoggerClientRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'loggerClientProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final Talker Function(
    LoggerClientRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$loggerClientHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Talker value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<Talker>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<Talker> $createElement(ProviderContainer container) =>
      $ProviderElement(this, container);

  @override
  LoggerClientProvider $copyWithCreate(
    Talker Function(
      LoggerClientRef ref,
    ) create,
  ) {
    return LoggerClientProvider._(create: create);
  }

  @override
  Talker create(LoggerClientRef ref) {
    final _$cb = _createCb ?? loggerClient;
    return _$cb(ref);
  }
}

String _$loggerClientHash() => r'905fb3e7f6e1625ad97c168798a70133015621c0';

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

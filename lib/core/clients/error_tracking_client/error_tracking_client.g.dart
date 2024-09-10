// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_tracking_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

typedef ErrorTrackingClientRef
    = Ref<Future<void> Function(Object? e, StackTrace s)>;

@ProviderFor(errorTrackingClient)
const errorTrackingClientProvider = ErrorTrackingClientProvider._();

final class ErrorTrackingClientProvider extends $FunctionalProvider<
        Future<void> Function(Object? e, StackTrace s),
        Future<void> Function(Object? e, StackTrace s),
        ErrorTrackingClientRef>
    with
        $Provider<Future<void> Function(Object? e, StackTrace s),
            ErrorTrackingClientRef> {
  const ErrorTrackingClientProvider._(
      {Future<void> Function(Object? e, StackTrace s) Function(
        ErrorTrackingClientRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'errorTrackingClientProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final Future<void> Function(Object? e, StackTrace s) Function(
    ErrorTrackingClientRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$errorTrackingClientHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(
      Future<void> Function(Object? e, StackTrace s) value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $ValueProvider<Future<void> Function(Object? e, StackTrace s)>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<Future<void> Function(Object? e, StackTrace s)>
      $createElement(ProviderContainer container) =>
          $ProviderElement(this, container);

  @override
  ErrorTrackingClientProvider $copyWithCreate(
    Future<void> Function(Object? e, StackTrace s) Function(
      ErrorTrackingClientRef ref,
    ) create,
  ) {
    return ErrorTrackingClientProvider._(create: create);
  }

  @override
  Future<void> Function(Object? e, StackTrace s) create(
      ErrorTrackingClientRef ref) {
    final _$cb = _createCb ?? errorTrackingClient;
    return _$cb(ref);
  }
}

String _$errorTrackingClientHash() =>
    r'd3ad7bc91dfbb77946be6cd1ecb0d1b90f5571a9';

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

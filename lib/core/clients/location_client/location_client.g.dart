// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

typedef LocationClientRef = Ref<LocationClient>;

@ProviderFor(locationClient)
const locationClientProvider = LocationClientProvider._();

final class LocationClientProvider extends $FunctionalProvider<
    LocationClient,
    LocationClient,
    LocationClientRef> with $Provider<LocationClient, LocationClientRef> {
  const LocationClientProvider._(
      {LocationClient Function(
        LocationClientRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'locationClientProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final LocationClient Function(
    LocationClientRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$locationClientHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocationClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<LocationClient>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<LocationClient> $createElement(
          ProviderContainer container) =>
      $ProviderElement(this, container);

  @override
  LocationClientProvider $copyWithCreate(
    LocationClient Function(
      LocationClientRef ref,
    ) create,
  ) {
    return LocationClientProvider._(create: create);
  }

  @override
  LocationClient create(LocationClientRef ref) {
    final _$cb = _createCb ?? locationClient;
    return _$cb(ref);
  }
}

String _$locationClientHash() => r'12bc551450530a1bc7090099e26159b53ed8b6a5';

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

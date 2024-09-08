// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_preferences_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

typedef SharedPreferencesRef = Ref<SharedPreferences>;

@ProviderFor(sharedPreferences)
const sharedPreferencesProvider = SharedPreferencesProvider._();

final class SharedPreferencesProvider extends $FunctionalProvider<
        SharedPreferences, SharedPreferences, SharedPreferencesRef>
    with $Provider<SharedPreferences, SharedPreferencesRef> {
  const SharedPreferencesProvider._(
      {SharedPreferences Function(
        SharedPreferencesRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'sharedPreferencesProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final SharedPreferences Function(
    SharedPreferencesRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$sharedPreferencesHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SharedPreferences value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<SharedPreferences>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<SharedPreferences> $createElement(
          ProviderContainer container) =>
      $ProviderElement(this, container);

  @override
  SharedPreferencesProvider $copyWithCreate(
    SharedPreferences Function(
      SharedPreferencesRef ref,
    ) create,
  ) {
    return SharedPreferencesProvider._(create: create);
  }

  @override
  SharedPreferences create(SharedPreferencesRef ref) {
    final _$cb = _createCb ?? sharedPreferences;
    return _$cb(ref);
  }
}

String _$sharedPreferencesHash() => r'5bd64b2e955a2adbe9af0a4cd3edab6923105998';

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

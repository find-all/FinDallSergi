// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefreshTokenResponseImpl _$$RefreshTokenResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RefreshTokenResponseImpl(
      token: json['token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$RefreshTokenResponseImplToJson(
        _$RefreshTokenResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refresh_token': instance.refreshToken,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

typedef TokenStorageClientRef = Ref<StorageClient<String>>;

@ProviderFor(tokenStorageClient)
const tokenStorageClientProvider = TokenStorageClientProvider._();

final class TokenStorageClientProvider extends $FunctionalProvider<
        StorageClient<String>, StorageClient<String>, TokenStorageClientRef>
    with $Provider<StorageClient<String>, TokenStorageClientRef> {
  const TokenStorageClientProvider._(
      {StorageClient<String> Function(
        TokenStorageClientRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'tokenStorageClientProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final StorageClient<String> Function(
    TokenStorageClientRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$tokenStorageClientHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StorageClient<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<StorageClient<String>>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<StorageClient<String>> $createElement(
          ProviderContainer container) =>
      $ProviderElement(this, container);

  @override
  TokenStorageClientProvider $copyWithCreate(
    StorageClient<String> Function(
      TokenStorageClientRef ref,
    ) create,
  ) {
    return TokenStorageClientProvider._(create: create);
  }

  @override
  StorageClient<String> create(TokenStorageClientRef ref) {
    final _$cb = _createCb ?? tokenStorageClient;
    return _$cb(ref);
  }
}

String _$tokenStorageClientHash() =>
    r'd53dee9ce391804ffe80977cd366b685712db7d5';

typedef RefreshTokenStorageClientRef = Ref<StorageClient<String>>;

@ProviderFor(refreshTokenStorageClient)
const refreshTokenStorageClientProvider = RefreshTokenStorageClientProvider._();

final class RefreshTokenStorageClientProvider extends $FunctionalProvider<
        StorageClient<String>,
        StorageClient<String>,
        RefreshTokenStorageClientRef>
    with $Provider<StorageClient<String>, RefreshTokenStorageClientRef> {
  const RefreshTokenStorageClientProvider._(
      {StorageClient<String> Function(
        RefreshTokenStorageClientRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'refreshTokenStorageClientProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final StorageClient<String> Function(
    RefreshTokenStorageClientRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$refreshTokenStorageClientHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StorageClient<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<StorageClient<String>>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<StorageClient<String>> $createElement(
          ProviderContainer container) =>
      $ProviderElement(this, container);

  @override
  RefreshTokenStorageClientProvider $copyWithCreate(
    StorageClient<String> Function(
      RefreshTokenStorageClientRef ref,
    ) create,
  ) {
    return RefreshTokenStorageClientProvider._(create: create);
  }

  @override
  StorageClient<String> create(RefreshTokenStorageClientRef ref) {
    final _$cb = _createCb ?? refreshTokenStorageClient;
    return _$cb(ref);
  }
}

String _$refreshTokenStorageClientHash() =>
    r'85d4ea5e20e6f1ec4a8a0b0dbee8232515435e36';

typedef ApiClientRef = Ref<ApiClient>;

@ProviderFor(apiClient)
const apiClientProvider = ApiClientProvider._();

final class ApiClientProvider
    extends $FunctionalProvider<ApiClient, ApiClient, ApiClientRef>
    with $Provider<ApiClient, ApiClientRef> {
  const ApiClientProvider._(
      {ApiClient Function(
        ApiClientRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'apiClientProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final ApiClient Function(
    ApiClientRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$apiClientHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ApiClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ApiClient>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<ApiClient> $createElement(ProviderContainer container) =>
      $ProviderElement(this, container);

  @override
  ApiClientProvider $copyWithCreate(
    ApiClient Function(
      ApiClientRef ref,
    ) create,
  ) {
    return ApiClientProvider._(create: create);
  }

  @override
  ApiClient create(ApiClientRef ref) {
    final _$cb = _createCb ?? apiClient;
    return _$cb(ref);
  }
}

String _$apiClientHash() => r'b970e3910ebdede3f48aecfba7e0666bd9dea9d0';

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

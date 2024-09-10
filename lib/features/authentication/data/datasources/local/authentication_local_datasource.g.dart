// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_local_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

typedef AuthenticationLocalDatasourceRef = Ref<StorageClient<UserModel>>;

@ProviderFor(authenticationLocalDatasource)
const authenticationLocalDatasourceProvider =
    AuthenticationLocalDatasourceProvider._();

final class AuthenticationLocalDatasourceProvider extends $FunctionalProvider<
        StorageClient<UserModel>,
        StorageClient<UserModel>,
        AuthenticationLocalDatasourceRef>
    with $Provider<StorageClient<UserModel>, AuthenticationLocalDatasourceRef> {
  const AuthenticationLocalDatasourceProvider._(
      {StorageClient<UserModel> Function(
        AuthenticationLocalDatasourceRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'authenticationLocalDatasourceProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final StorageClient<UserModel> Function(
    AuthenticationLocalDatasourceRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$authenticationLocalDatasourceHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StorageClient<UserModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<StorageClient<UserModel>>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<StorageClient<UserModel>> $createElement(
          ProviderContainer container) =>
      $ProviderElement(this, container);

  @override
  AuthenticationLocalDatasourceProvider $copyWithCreate(
    StorageClient<UserModel> Function(
      AuthenticationLocalDatasourceRef ref,
    ) create,
  ) {
    return AuthenticationLocalDatasourceProvider._(create: create);
  }

  @override
  StorageClient<UserModel> create(AuthenticationLocalDatasourceRef ref) {
    final _$cb = _createCb ?? authenticationLocalDatasource;
    return _$cb(ref);
  }
}

String _$authenticationLocalDatasourceHash() =>
    r'3135815c49e15d675b4aae32a117b6d38cc91613';

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

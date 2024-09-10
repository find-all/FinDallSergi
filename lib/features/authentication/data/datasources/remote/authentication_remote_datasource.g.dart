// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_remote_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

typedef AuthenticationRemoteDatasourceRef = Ref<AuthenticationRemoteDatasource>;

@ProviderFor(authenticationRemoteDatasource)
const authenticationRemoteDatasourceProvider =
    AuthenticationRemoteDatasourceProvider._();

final class AuthenticationRemoteDatasourceProvider extends $FunctionalProvider<
        AuthenticationRemoteDatasource,
        AuthenticationRemoteDatasource,
        AuthenticationRemoteDatasourceRef>
    with
        $Provider<AuthenticationRemoteDatasource,
            AuthenticationRemoteDatasourceRef> {
  const AuthenticationRemoteDatasourceProvider._(
      {AuthenticationRemoteDatasource Function(
        AuthenticationRemoteDatasourceRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'authenticationRemoteDatasourceProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final AuthenticationRemoteDatasource Function(
    AuthenticationRemoteDatasourceRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$authenticationRemoteDatasourceHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthenticationRemoteDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<AuthenticationRemoteDatasource>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<AuthenticationRemoteDatasource> $createElement(
          ProviderContainer container) =>
      $ProviderElement(this, container);

  @override
  AuthenticationRemoteDatasourceProvider $copyWithCreate(
    AuthenticationRemoteDatasource Function(
      AuthenticationRemoteDatasourceRef ref,
    ) create,
  ) {
    return AuthenticationRemoteDatasourceProvider._(create: create);
  }

  @override
  AuthenticationRemoteDatasource create(AuthenticationRemoteDatasourceRef ref) {
    final _$cb = _createCb ?? authenticationRemoteDatasource;
    return _$cb(ref);
  }
}

String _$authenticationRemoteDatasourceHash() =>
    r'2785d9061392567e35125143593a4f68d91c53d0';

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

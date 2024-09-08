// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

typedef AuthenticationRepositoryRef = Ref<AuthenticationRepository>;

@ProviderFor(authenticationRepository)
const authenticationRepositoryProvider = AuthenticationRepositoryProvider._();

final class AuthenticationRepositoryProvider extends $FunctionalProvider<
        AuthenticationRepository,
        AuthenticationRepository,
        AuthenticationRepositoryRef>
    with $Provider<AuthenticationRepository, AuthenticationRepositoryRef> {
  const AuthenticationRepositoryProvider._(
      {AuthenticationRepository Function(
        AuthenticationRepositoryRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'authenticationRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final AuthenticationRepository Function(
    AuthenticationRepositoryRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$authenticationRepositoryHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthenticationRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<AuthenticationRepository>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<AuthenticationRepository> $createElement(
          ProviderContainer container) =>
      $ProviderElement(this, container);

  @override
  AuthenticationRepositoryProvider $copyWithCreate(
    AuthenticationRepository Function(
      AuthenticationRepositoryRef ref,
    ) create,
  ) {
    return AuthenticationRepositoryProvider._(create: create);
  }

  @override
  AuthenticationRepository create(AuthenticationRepositoryRef ref) {
    final _$cb = _createCb ?? authenticationRepository;
    return _$cb(ref);
  }
}

String _$authenticationRepositoryHash() =>
    r'788a16ecf5ccc947ab5e92a2943d1c121e3989a2';

typedef UserStorageClientRef = Ref<StorageClient<UserModel>>;

@ProviderFor(userStorageClient)
const userStorageClientProvider = UserStorageClientProvider._();

final class UserStorageClientProvider extends $FunctionalProvider<
        StorageClient<UserModel>,
        StorageClient<UserModel>,
        UserStorageClientRef>
    with $Provider<StorageClient<UserModel>, UserStorageClientRef> {
  const UserStorageClientProvider._(
      {StorageClient<UserModel> Function(
        UserStorageClientRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'userStorageClientProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final StorageClient<UserModel> Function(
    UserStorageClientRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$userStorageClientHash();

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
  UserStorageClientProvider $copyWithCreate(
    StorageClient<UserModel> Function(
      UserStorageClientRef ref,
    ) create,
  ) {
    return UserStorageClientProvider._(create: create);
  }

  @override
  StorageClient<UserModel> create(UserStorageClientRef ref) {
    final _$cb = _createCb ?? userStorageClient;
    return _$cb(ref);
  }
}

String _$userStorageClientHash() => r'856feb3cd89b5e7e47b412f159ae5ea2f8f1c73e';

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member

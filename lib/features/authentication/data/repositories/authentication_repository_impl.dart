import 'package:fin_dall/core/clients/error_tracking_client/error_tracking_client.dart';
import 'package:fin_dall/core/clients/http_client/api_client.dart';
import 'package:fin_dall/core/clients/logger_client/logger_client.dart';
import 'package:fin_dall/core/clients/storage_client/secure_storage_client.dart';
import 'package:fin_dall/core/clients/storage_client/storage_client.dart';
import 'package:fin_dall/core/constants/storage_constants.dart';
import 'package:fin_dall/core/utils/result.dart';
import 'package:fin_dall/features/authentication/data/datasources/remote/authentication_remote_datasource.dart';
import 'package:fin_dall/features/authentication/data/datasources/remote/request/reset_password_request.dart';
import 'package:fin_dall/features/authentication/data/datasources/remote/request/send_password_reset_email_request.dart';
import 'package:fin_dall/features/authentication/data/datasources/remote/request/send_verification_code_request.dart';
import 'package:fin_dall/features/authentication/data/datasources/remote/request/sign_in_request.dart';
import 'package:fin_dall/features/authentication/data/datasources/remote/request/sign_up_request.dart';
import 'package:fin_dall/features/authentication/data/datasources/remote/request/verify_user_request.dart';
import 'package:fin_dall/features/authentication/data/mappers/user_mapper.dart';
import 'package:fin_dall/features/authentication/data/models/user_model.dart';
import 'package:fin_dall/features/authentication/domain/entities/user.dart';
import 'package:fin_dall/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:fin_dall/features/authentication/domain/repositories/export.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_repository_impl.g.dart';

/// [AuthenticationRepositoryImpl] is an implementation of [AuthenticationRepository].
/// It uses a remote data source to perform authentication operations.
/// It also uses a local data source to store the user data.
///
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationRemoteDatasource _remoteDatasource;
  final StorageClient<UserModel> _localDatasource;
  final StorageClient<String> _tokenDatasource;
  final StorageClient<String> _refreshTokenDatasource;

  AuthenticationRepositoryImpl({
    required AuthenticationRemoteDatasource remoteDatasource,
    required StorageClient<UserModel> localDatasource,
    required StorageClient<String> tokenDatasource,
    required StorageClient<String> refreshTokenDatasource,
  })  : _remoteDatasource = remoteDatasource,
        _localDatasource = localDatasource,
        _tokenDatasource = tokenDatasource,
        _refreshTokenDatasource = refreshTokenDatasource;

  @override
  Future<Result<User>> getUser() async {
    // Get the user from the local data source.
    final result = await _localDatasource.read();

    return result.when(
      success: (user) {
        // If the user is found, return the user as a user entity.
        return Result.success(UserMapper.fromModel(user));
      },
      error: (error) => Result.error(error),
    );
  }

  @override
  Future<Result<String>> sendEmailVerificationEmail() async {
    final userResult = await getUser();

    if (userResult.isError) {
      return Result.error(userResult.getErrorOrThrow());
    }

    final email = userResult.getOrThrow().email;

    final result = await _remoteDatasource.sendVerificationCode(
      params: SendVerificationCodeRequest(
        email: email,
      ),
    );

    return result.when(
      success: (response) async {
        return Result.success(response.token);
      },
      error: (error) => Result.error(error),
    );
  }

  @override
  Future<Result<String>> sendPasswordResetEmail({required String email}) async {
    final result = await _remoteDatasource.sendPasswordResetEmail(
      params: SendPasswordResetEmailRequest(
        email: email,
      ),
    );

    return result.when(
      success: (response) async {
        return Result.success(response.token);
      },
      error: (error) => Result.error(error),
    );
  }

  @override
  Future<Result<User>> signIn(
      {required String email, required String password}) async {
    // Call the remote data source to sign in with email and password.
    final remoteResult = await _remoteDatasource.signIn(
        params: SignInRequest(email: email, password: password));

    return remoteResult.when(
      success: (signInResponse) async {
        // If sign in is successful, save the token and refresh token to the local data source.

        final localTokenResult =
            await _tokenDatasource.write(signInResponse.token);

        if (localTokenResult.isError) {
          await signOut();
          // If there is an error saving the token to the local data source, return the error.
          return Result.error(localTokenResult.getErrorOrThrow());
        }

        final localRefreshTokenResult =
            await _refreshTokenDatasource.write(signInResponse.refreshToken);

        if (localRefreshTokenResult.isError) {
          await signOut();
          // If there is an error saving the refresh token to the local data source, return the error.
          return Result.error(localRefreshTokenResult.getErrorOrThrow());
        }

        final localUserResult =
            await _localDatasource.write(signInResponse.user);

        if (localUserResult.isError) {
          await signOut();
          // If there is an error saving the user to the local data source, return the error.
          return Result.error(localUserResult.getErrorOrThrow());
        }

        // If the user is saved successfully, return the user as a user entity.
        final entity = UserMapper.fromModel(signInResponse.user);

        return Result.success(entity);
      },
      error: (error) => Result.error(error),
    );
  }
  
  
  @override
  Future<Result<User>> signInWithApple() async {
    throw UnimplementedError();
  }

  @override
  Future<Result<User>> signInWithGoogle() async {
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> signOut() async {
    // Call logout remote data source
    final remoteResult = await _remoteDatasource.signOut();

    if (remoteResult.isError) {
      return Result.error(remoteResult.getErrorOrThrow());
    }

    final localTokenResult = await _tokenDatasource.delete();

    if (localTokenResult.isError) {
      return Result.error(localTokenResult.getErrorOrThrow());
    }

    final localRefreshTokenResult = await _refreshTokenDatasource.delete();

    if (localRefreshTokenResult.isError) {
      return Result.error(localRefreshTokenResult.getErrorOrThrow());
    }

    final localUserResult = await _localDatasource.delete();

    if (localUserResult.isError) {
      // If there is an error deleting the user from the local data source, return the error.
      return Result.error(localUserResult.getErrorOrThrow());
    }

    return Result.success(null);
  }

  @override
  Future<Result<({String token, String email})>> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    final result = await _remoteDatasource.signUp(
      params: SignUpRequest(name: name, email: email, password: password),
    );

    return result.when(
      success: (response) async {
        final storeResult = await _localDatasource.write(response.user);

        return storeResult.when(
          success: (value) => Result.success(
              (email: response.user.email, token: response.verifyUserToken)),
          error: (error) => Result.error(error),
        );
      },
      error: (error) => Result.error(error),
    );
  }

  @override
  Future<Result<User>> verifyUserAccount({
    required String code,
    required String token,
  }) async {
    final result = await _remoteDatasource.verifyUser(
      params: VerifyUserRequest(
        verifyUserToken: token,
        code: code,
      ),
    );

    return result.when(
      success: (response) async {
        final localTokenResult = await _tokenDatasource.write(response.token);

        if (localTokenResult.isError) {
          await signOut();
          // If there is an error saving the token to the local data source, return the error.
          return Result.error(localTokenResult.getErrorOrThrow());
        }

        final localRefreshTokenResult =
            await _refreshTokenDatasource.write(response.refreshToken);

        if (localRefreshTokenResult.isError) {
          await signOut();
          // If there is an error saving the refresh token to the local data source, return the error.
          return Result.error(localRefreshTokenResult.getErrorOrThrow());
        }

        final localUserResult = await _localDatasource.write(response.user);

        if (localUserResult.isError) {
          await signOut();
          // If there is an error saving the user to the local data source, return the error.
          return Result.error(localUserResult.getErrorOrThrow());
        }

        // If the user is saved successfully, return the user as a user entity.
        return Result.success(UserMapper.fromModel(response.user));
      },
      error: (error) => Result.error(error),
    );
  }

  @override
  Future<Result<void>> resetPassword(
      {required String password,
      required String code,
      required String token}) async {
    final result = await _remoteDatasource.resetPassword(
      params: ResetPasswordRequest(
        confirmPassword: password,
        token: token,
        code: code,
        password: password,
      ),
    );

    return result.when(
      success: (response) async {
        return Result.success(null);
      },
      error: (error) => Result.error(error),
    );
  }
}

@riverpod
AuthenticationRepository authenticationRepository(
    AuthenticationRepositoryRef ref) {
  final remoteDatasource = ref.watch(authenticationRemoteDatasourceProvider);
  final userLocalDatasource = ref.watch(userStorageClientProvider);
  final tokenLocalDatasource = ref.watch(tokenStorageClientProvider);
  final refreshTokenLocalDatasource =
      ref.watch(refreshTokenStorageClientProvider);
  return AuthenticationRepositoryImpl(
    remoteDatasource: remoteDatasource,
    localDatasource: userLocalDatasource,
    tokenDatasource: tokenLocalDatasource,
    refreshTokenDatasource: refreshTokenLocalDatasource,
  );
}

@riverpod
StorageClient<UserModel> userStorageClient(UserStorageClientRef ref) {
  final logger = ref.watch(loggerClientProvider);

  final errorTracker = ref.watch(errorTrackingClientProvider);

  return SecureStorageClient<UserModel>(
    key: SecureStorageConstants.userKey,
    talker: logger,
    onErrorTrack: errorTracker,
    fromJson: (map) => UserModel.fromJson(map),
    toJson: (model) => model.toJson(),
    secureStorage: const FlutterSecureStorage(),
  );
}

import 'package:fin_dall/core/clients/error_tracking_client/error_tracking_client.dart';
import 'package:fin_dall/core/clients/http_client/api_client.dart';
import 'package:fin_dall/core/clients/http_client/api_response.dart';
import 'package:fin_dall/core/constants/api_constants.dart';
import 'package:fin_dall/core/error/api_failure.dart';
import 'package:fin_dall/core/utils/result.dart';
import 'package:fin_dall/features/authentication/data/datasources/remote/request/reset_password_request.dart';
import 'package:fin_dall/features/authentication/data/datasources/remote/request/send_password_reset_email_request.dart';
import 'package:fin_dall/features/authentication/data/datasources/remote/request/send_verification_code_request.dart';
import 'package:fin_dall/features/authentication/data/datasources/remote/request/sign_in_request.dart';
import 'package:fin_dall/features/authentication/data/datasources/remote/request/sign_up_request.dart';
import 'package:fin_dall/features/authentication/data/datasources/remote/request/verify_user_request.dart';
import 'package:fin_dall/features/authentication/data/datasources/remote/response/send_password_reset_email_response.dart';
import 'package:fin_dall/features/authentication/data/datasources/remote/response/send_verification_code_response.dart';
import 'package:fin_dall/features/authentication/data/datasources/remote/response/sign_in_response.dart';
import 'package:fin_dall/features/authentication/data/datasources/remote/response/sign_up_response.dart';
import 'package:fin_dall/features/authentication/data/datasources/remote/response/verify_user_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_remote_datasource.g.dart';

abstract class AuthenticationRemoteDatasource {
  /// Sign in user
  ///
  /// Use this method to sign in user. [params] is required and should not be null.
  ///
  /// Returns [Result] of [SignInResponse]
  ///
  /// Return [Failure] if there is an error
  ///
  Future<Result<SignInResponse>> signIn({required SignInRequest params});

  /// Sign up user
  ///
  /// Use this method to sign up user. [params] is required and should not be null.
  ///
  /// Returns [Result] of [SignUpResponse]
  ///
  /// Return [Failure] if there is an error
  ///
  Future<Result<SignUpResponse>> signUp({required SignUpRequest params});

  /// Sign out user
  ///
  /// Use this method to sign out user.
  ///
  /// Returns [Result] of [void]
  ///
  /// Return [Failure] if there is an error
  ///
  Future<Result<void>> signOut();

  /// Verify user
  ///
  /// Use this method to verify user. [params] is required and should not be null.
  ///
  /// Returns [Result] of [VerifyUserResponse]
  ///
  /// Return [Failure] if there is an error
  ///
  Future<Result<VerifyUserResponse>> verifyUser(
      {required VerifyUserRequest params});

  /// Send verification code
  ///
  /// Use this method to send verification code to user. [params] is required and should not be null.
  ///
  /// Returns [Result] of [SendVerificationCodeResponse] with the verification code
  ///
  /// Return [Failure] if there is an error
  ///
  Future<Result<SendVerificationCodeResponse>> sendVerificationCode(
      {required SendVerificationCodeRequest params});

  /// Send password reset email
  ///
  /// Use this method to send password reset email to user. [params] is required and should not be null.
  ///
  /// Returns [Result] of [SendPasswordResetEmailResponse] with the token
  ///
  /// Return [Failure] if there is an error
  ///
  Future<Result<SendPasswordResetEmailResponse>> sendPasswordResetEmail(
      {required SendPasswordResetEmailRequest params});

  /// Reset password
  ///
  /// Use this method to reset password. [params] is required and should not be null.
  ///
  /// Returns [Result] of [void]
  ///
  /// Return [Failure] if there is an error
  ///
  Future<Result<void>> resetPassword({required ResetPasswordRequest params});
}

class AuthenticationRemoteDatasourceImpl
    implements AuthenticationRemoteDatasource {
  final ApiClient _apiClient;

  final Future<void> Function(Object? e, StackTrace s) _errorTracking;

  const AuthenticationRemoteDatasourceImpl({
    required ApiClient apiClient,
    required Future<void> Function(Object? e, StackTrace s) errorTracking,
  })  : _apiClient = apiClient,
        _errorTracking = errorTracking;

  @override
  Future<Result<SignInResponse>> signIn({required SignInRequest params}) async {
    final result = await _apiClient.post(
      path: ApiConstants.login,
      body: params.toJson(),
    );

    return result.when(
      success: (response) {
        if (response is MapApiResponse) {
          return Result.success(SignInResponse.fromJson(response.body));
        }

        final failure = InvalidResponseFormatFailure(
          message: 'Invalid response format',
          error: 'Invalid response format for sign in. It should be a map.',
          stackTrace: StackTrace.current,
          statusCode: -1,
        );

        _errorTracking(failure, StackTrace.current);

        return Result.error(
          failure,
        );
      },
      error: (error) {
        return Result.error(error);
      },
    );
  }

  @override
  Future<Result<void>> signOut() async {
    final result = await _apiClient.post(
      path: ApiConstants.logout,
    );

    return result.when(
      success: (response) {
        return Result.success(null);
      },
      error: (error) {
        return Result.error(error);
      },
    );
  }

  @override
  Future<Result<SignUpResponse>> signUp({required SignUpRequest params}) async {
    final result = await _apiClient.post(
      path: ApiConstants.register,
      body: params.toJson(),
    );

    return result.when(
      success: (response) {
        if (response is MapApiResponse) {
          return Result.success(SignUpResponse.fromJson(response.body));
        }

        final failure = InvalidResponseFormatFailure(
          message: 'Invalid response format',
          error: 'Invalid response format for sign up. It should be a map.',
          stackTrace: StackTrace.current,
          statusCode: -1,
        );

        _errorTracking(failure, StackTrace.current);

        return Result.error(
          failure,
        );
      },
      error: (error) {
        return Result.error(error);
      },
    );
  }

  @override
  Future<Result<VerifyUserResponse>> verifyUser({
    required VerifyUserRequest params,
  }) async {
    final result = await _apiClient.post(
      path: ApiConstants.verifyUser(params.verifyUserToken),
      body: params.toJson(),
    );

    return result.when(
      success: (response) {
        if (response is MapApiResponse) {
          return Result.success(VerifyUserResponse.fromJson(response.body));
        }

        final failure = InvalidResponseFormatFailure(
          message: 'Invalid response format',
          error: 'Invalid response format for verify user. It should be a map.',
          stackTrace: StackTrace.current,
          statusCode: -1,
        );

        _errorTracking(failure, StackTrace.current);

        return Result.error(
          failure,
        );
      },
      error: (error) {
        return Result.error(error);
      },
    );
  }

  @override
  Future<Result<SendVerificationCodeResponse>> sendVerificationCode(
      {required SendVerificationCodeRequest params}) async {
    final result = await _apiClient.post(
      path: ApiConstants.sendVerificationCode,
      body: params.toJson(),
    );

    return result.when(
      success: (response) {
        if (response is MapApiResponse &&
            response.body.containsKey('register')) {
          return Result.success(
              SendVerificationCodeResponse.fromJson(response.body['register']));
        }

        final failure = InvalidResponseFormatFailure(
          message: 'Invalid response format',
          error:
              'Invalid response format for send verification code. It should be a map.',
          stackTrace: StackTrace.current,
          statusCode: -1,
        );

        _errorTracking(failure, StackTrace.current);

        return Result.error(
          failure,
        );
      },
      error: (error) {
        return Result.error(error);
      },
    );
  }

  @override
  Future<Result<void>> resetPassword(
      {required ResetPasswordRequest params}) async {
    final result = await _apiClient.post(
      path: ApiConstants.resetPassword(params.token),
      body: params.toJson(),
    );

    return result.when(
      success: (response) {
        return Result.success(null);
      },
      error: (error) {
        return Result.error(error);
      },
    );
  }

  @override
  Future<Result<SendPasswordResetEmailResponse>> sendPasswordResetEmail(
      {required SendPasswordResetEmailRequest params}) async {
    final result = await _apiClient.post(
      path: ApiConstants.sendPasswordResetEmail,
      body: params.toJson(),
    );

    return result.when(
      success: (response) {
        if (response is MapApiResponse) {
          return Result.success(
              SendPasswordResetEmailResponse.fromJson(response.body));
        }

        final failure = InvalidResponseFormatFailure(
          message: 'Invalid response format',
          error:
              'Invalid response format for send password reset email. It should be a map.',
          stackTrace: StackTrace.current,
          statusCode: -1,
        );

        _errorTracking(failure, StackTrace.current);

        return Result.error(
          failure,
        );
      },
      error: (error) {
        return Result.error(error);
      },
    );
  }
}

@riverpod
AuthenticationRemoteDatasource authenticationRemoteDatasource(
    AuthenticationRemoteDatasourceRef ref) {
  final apiClient = ref.watch(apiClientProvider);

  final errorTraker = ref.watch(errorTrackingClientProvider);

  return AuthenticationRemoteDatasourceImpl(
    apiClient: apiClient,
    errorTracking: errorTraker,
  );
}

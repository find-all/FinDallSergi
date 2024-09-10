// ignore_for_file: invalid_annotation_target

import 'dart:async';
import 'dart:convert';

import 'package:fin_dall/core/clients/error_tracking_client/error_tracking_client.dart';
import 'package:fin_dall/core/clients/http_client/api_response.dart';
import 'package:fin_dall/core/clients/logger_client/custom_logger_types.dart';
import 'package:fin_dall/core/clients/logger_client/logger_client.dart';
import 'package:fin_dall/core/clients/storage_client/secure_storage_client.dart';
import 'package:fin_dall/core/clients/storage_client/storage_client.dart';
import 'package:fin_dall/core/constants/api_constants.dart';
import 'package:fin_dall/core/constants/storage_constants.dart';
import 'package:fin_dall/core/error/api_failure.dart';
import 'package:fin_dall/core/error/failure.dart';
import 'package:fin_dall/core/utils/result.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'client/export.dart';

part 'api_client.freezed.dart';
part 'api_client.g.dart';

class ApiClient {
  late http.Client _httpClient;

  /// Defines base URL for the API
  ///
  final String baseUrl;

  /// Storage client to handle the token
  ///
  final StorageClient<String> tokenStorageClient;

  /// Storage client to handle refresh token
  ///
  final StorageClient<String> refreshTokenStorageClient;

  /// Defines a function to log what happens in the client
  ///
  /// Just for debugging purposes
  final Talker logger;

  /// Defines a function to log errors
  ///
  /// Just for debugging purposes
  ///
  final Future<void> Function(Object? e, StackTrace s) errorTracking;

  ApiClient({
    required this.baseUrl,
    required this.tokenStorageClient,
    required this.refreshTokenStorageClient,
    required this.logger,
    required this.errorTracking,
  }) {
    // Initialize the http client based on the platform
    _httpClient = CustomHttpClient.getHttpClient();
  }

  Future<Map<String, String>> _buildAuthenticationHeaders(
    Map<String, String>? headers,
  ) async {
    final newHeaders = <String, String>{};

    if (headers != null) {
      newHeaders.addAll(headers);
    }

    if (!newHeaders.containsKey('Content-Type')) {
      newHeaders.addAll({
        'Content-Type': 'application/json',
      });
    }

    if (newHeaders.containsKey('Authorization')) {
      return newHeaders;
    }

    final tokenResult = await tokenStorageClient.read();

    final MapEntry<String, String>? authHeader = tokenResult.when(
      success: (token) {
        final bearer = 'Bearer ${token.replaceAll('"', '').trim()}';

        return MapEntry('Authorization', bearer);
      },
      error: (_) => null,
    );

    if (authHeader != null) {
      newHeaders.addAll({authHeader.key: authHeader.value});
    }

    return newHeaders;
  }

  Future<Result<ApiResponse>> _refreshToken(http.Request request) async {
    final refreshResult = await refreshTokenStorageClient.read();

    if (refreshResult.isError) {
      return Result.error(
        UnauthorizedFailure(
          error: 'No refresh token found',
          stackTrace: StackTrace.current,
        ),
      );
    }

    final tokenResult = await tokenStorageClient.read();

    if (tokenResult.isError) {
      return Result.error(
        UnauthorizedFailure(
          error: 'No token found',
          stackTrace: StackTrace.current,
        ),
      );
    }

    final authHeaders = await _buildAuthenticationHeaders(null);

    return Result.asyncGuard(
      () async {
        final response = await _httpClient.post(
          Uri.parse("$baseUrl${ApiConstants.refreshToken}"),
          headers: authHeaders,
        );

        if (response.statusCode != 200) {
          throw Result.error(
            UnauthorizedFailure(
              error: response.body,
              stackTrace: StackTrace.current,
            ),
          );
        }

        final parseResponse = RefreshTokenResponse.fromJson(
          jsonDecode(response.body),
        );

        final storageResult =
            await tokenStorageClient.write(parseResponse.token);

        if (storageResult.isError) {
          throw Result.error(
            UnauthorizedFailure(
              error: 'Error saving token',
              stackTrace: StackTrace.current,
            ),
          );
        }

        final refreshTokenStorageResult =
            await refreshTokenStorageClient.write(parseResponse.refreshToken);

        if (refreshTokenStorageResult.isError) {
          throw Result.error(
            UnauthorizedFailure(
              error: 'Error saving refresh token',
              stackTrace: StackTrace.current,
            ),
          );
        }

        final resultRequest = await switch (request.method) {
          'GET' => get(path: request.url.path, headers: request.headers),
          'POST' => post(
              path: request.url.path,
              headers: request.headers,
              body: jsonDecode(request.body)),
          'PUT' => put(
              path: request.url.path,
              headers: request.headers,
              body: jsonDecode(request.body)),
          'PATCH' => patch(
              path: request.url.path,
              headers: request.headers,
              body: jsonDecode(request.body)),
          'DELETE' => delete(
              path: request.url.path,
              headers: request.headers,
              body: jsonDecode(request.body)),
          _ => throw Exception('Method not supported'),
        };

        return resultRequest.when(
          success: (responseRequest) => responseRequest,
          error: (error) => throw error,
        );
      },
      onError: (error, stacktrace) {
        errorTracking.call(error, stacktrace);

        if (error is ApiFailure) {
          return error;
        }

        return UnknownApiFailure(
          statusCode: -1,
          error: error.toString(),
          message: error.toString(),
          stackTrace: stacktrace,
        );
      },
    );
  }

  Failure _onError(Object e, StackTrace s) {
    logger.logTyped(
      FailureLog(
        'Api Client Delete Error',
        failure: e,
        stack: s,
      ),
    );
    errorTracking.call(e, s);
    if (e is ApiFailure) {
      return e;
    }

    return UnknownApiFailure(
      statusCode: -1,
      error: e.toString(),
      message: e.toString(),
      stackTrace: s,
    );
  }

  Future<Result<ApiResponse>> _parseResponse(
      {required http.Response response, required http.Request request}) async {
    logger.logTyped(
      HttpRequestLog(
        request.url.toString(),
        request: request,
      ),
    );

    logger.logTyped(
      HttpResponseLog(
        response.body,
        response: response,
      ),
    );

    switch (response.statusCode) {
      case 100:
        return Result.error(
          ContinueFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 101:
        return Result.error(
          SwitchingProtocolsFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 102:
        return Result.error(
          ProcessingFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 103:
        return Result.error(
          EarlyHintsFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );

      case 200 || 201:
        if (response.body.isEmpty) {
          return Result.success(
            EmptyApiResponse(
              headers: response.headers,
            ),
          );
        }

        // Check if the response is not a list or a map
        if (response.body[0] != '[' && response.body[0] != '{') {
          return Result.success(
            RawStringApiResponse(
              body: response.body,
              headers: response.headers,
            ),
          );
        }

        final jsonResponse = json.decode(response.body);

        if (jsonResponse is List<dynamic>) {
          return Result.success(
            ListApiResponse(
              body: jsonResponse,
              headers: response.headers,
            ),
          );
        } else {
          return Result.success(
            MapApiResponse(
              body: jsonResponse,
              headers: response.headers,
            ),
          );
        }

      case 300:
        return Result.error(
          MultipleChoicesFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 301:
        return Result.error(
          MovedPermanentlyFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 302:
        return Result.error(
          FoundFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 303:
        return Result.error(
          SeeOtherFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 304:
        return Result.error(
          NotModifiedFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 305:
        return Result.error(
          UseProxyFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 306:
        return Result.error(
          SwitchProxyFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 307:
        return Result.error(
          TemporaryRedirectFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 308:
        return Result.error(
          PermanentRedirectFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 400:
        return Result.error(
          BadRequestFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 401:
        return Result.error(
          UnauthorizedFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 402:
        return Result.error(
          PaymentRequiredFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 403:
        return _refreshToken(request);

      case 404:
        return Result.error(
          NotFoundFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 405:
        return Result.error(
          MethodNotAllowedFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 406:
        if (response.body.contains('The email has already been taken')) {
          return Result.error(
            EmailAlreadyExistsFailure(
              error: response.body,
              stackTrace: StackTrace.current,
            ),
          );
        } else if (response.body.contains('The selected code is invalid')) {
          return Result.error(
            InvalidActivationCode(
              error: response.body,
              stackTrace: StackTrace.current,
            ),
          );
        } else if (response.body.contains('Usuario no habilitado')) {
          return Result.error(
            UserDisabledFailure(
              error: response.body,
              stackTrace: StackTrace.current,
            ),
          );
        }
        return Result.error(
          NotAcceptableFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 407:
        return Result.error(
          ProxyAuthenticationRequiredFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 408:
        return Result.error(
          RequestTimeoutFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 409:
        return Result.error(
          ConflictFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 410:
        return Result.error(
          GoneFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 411:
        return Result.error(
          LengthRequiredFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 412:
        return Result.error(
          PreconditionFailedFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 413:
        return Result.error(
          PayloadTooLargeFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 414:
        return Result.error(
          URITooLongFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 415:
        return Result.error(
          UnsupportedMediaTypeFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 416:
        return Result.error(
          RangeNotSatisfiableFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 417:
        return Result.error(
          ExpectationFailedFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 418:
        return Result.error(
          ImATeapotFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 421:
        return Result.error(
          MisdirectedRequestFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 422:
        if (response.body.contains('Incorret user and password')) {
          return Result.error(
            InvalidCrendentialsFailure(
              error: response.body,
              stackTrace: StackTrace.current,
            ),
          );
        }
        return Result.error(
          UnprocessableEntityFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 423:
        return Result.error(
          LockedFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 424:
        return Result.error(
          FailedDependencyFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 425:
        return Result.error(
          TooEarlyFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 426:
        return Result.error(
          UpgradeRequiredFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 428:
        return Result.error(
          PreconditionRequiredFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 429:
        return Result.error(
          TooManyRequestsFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 431:
        return Result.error(
          RequestHeaderFieldsTooLargeFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 451:
        return Result.error(
          UnavailableForLegalReasonsFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 500:
        return Result.error(
          InternalServerErrorFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 501:
        return Result.error(
          NotImplementedFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 502:
        return Result.error(
          BadGatewayFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 503:
        return Result.error(
          ServiceUnavailableFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 504:
        return Result.error(
          GatewayTimeoutFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 505:
        return Result.error(
          HttpVersionNotSupportedFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 506:
        return Result.error(
          VariantAlsoNegotiatesFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 507:
        return Result.error(
          InsufficientStorageFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 508:
        return Result.error(
          LoopDetectedFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 510:
        return Result.error(
          NotExtendedFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );
      case 511:
        return Result.error(
          NetworkAuthenticationRequiredFailure(
            error: response.body,
            stackTrace: StackTrace.current,
          ),
        );

      default:
        return Result.error(
          UnknownApiFailure(
            statusCode: response.statusCode,
            error: response.body,
            message: response.body,
            stackTrace: StackTrace.current,
          ),
        );
    }
  }

  Future<Result<ApiResponse>> delete({
    required String path,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
  }) async {
    final url = Uri.parse("$baseUrl$path");

    final authHeaders = await _buildAuthenticationHeaders(headers);

    return Result.asyncGuard(
      () async {
        final response = await _httpClient.delete(
          url,
          headers: authHeaders,
          body: body != null ? jsonEncode(body) : null,
        );

        final result = await _parseResponse(
          response: response,
          request: http.Request(
            'DELETE',
            url,
          )
            ..body = jsonEncode(body)
            ..headers.addAll(authHeaders),
        );

        return result.when(
          success: (value) {
            return value;
          },
          error: (error) => throw error,
        );
      },
      onError: _onError,
    );
  }

  Future<Result<ApiResponse>> get({
    required String path,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    final url = Uri.parse("$baseUrl$path");

    final authHeaders = headers ?? await _buildAuthenticationHeaders(headers);

    return Result.asyncGuard(
      () async {
        final response = await _httpClient.get(
          Uri.https(
            url.authority,
            url.path,
            queryParameters,
          ),
          headers: authHeaders,
        );

        final result = await _parseResponse(
          response: response,
          request: http.Request(
            'GET',
            url,
          )..headers.addAll(authHeaders),
        );

        return result.when(
          success: (value) {
            return value;
          },
          error: (error) => throw error,
        );
      },
      onError: _onError,
    );
  }

  Future<Result<ApiResponse>> patch({
    required String path,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
  }) async {
    final url = Uri.parse("$baseUrl$path");

    final authHeaders = await _buildAuthenticationHeaders(headers);

    return Result.asyncGuard(
      () async {
        final response = await _httpClient.patch(
          url,
          headers: authHeaders,
          body: body != null ? jsonEncode(body) : null,
        );

        final result = await _parseResponse(
          response: response,
          request: http.Request(
            'PATCH',
            url,
          )
            ..body = jsonEncode(body)
            ..headers.addAll(authHeaders),
        );

        return result.when(
          success: (value) {
            return value;
          },
          error: (error) => throw error,
        );
      },
      onError: _onError,
    );
  }

  Future<Result<ApiResponse>> post({
    required String path,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
  }) async {
    final url = Uri.parse("$baseUrl$path");

    final authHeaders = await _buildAuthenticationHeaders(headers);

    return Result.asyncGuard(
      () async {
        final response = await _httpClient.post(
          url,
          headers: authHeaders,
          body: body != null ? jsonEncode(body) : null,
        );

        final result = await _parseResponse(
          response: response,
          request: http.Request(
            'POST',
            url,
          )
            ..body = jsonEncode(body)
            ..headers.addAll(authHeaders),
        );

        return result.when(
          success: (value) {
            return value;
          },
          error: (error) => throw error,
        );
      },
      onError: _onError,
    );
  }

  Future<Result<ApiResponse>> put({
    required String path,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
  }) async {
    final url = Uri.parse("$baseUrl$path");

    final authHeaders = await _buildAuthenticationHeaders(headers);

    return Result.asyncGuard(
      () async {
        final response = await _httpClient.put(
          url,
          headers: authHeaders,
          body: body != null ? jsonEncode(body) : null,
        );

        final result = await _parseResponse(
          response: response,
          request: http.Request(
            'PUT',
            url,
          )
            ..body = jsonEncode(body)
            ..headers.addAll(authHeaders),
        );

        return result.when(
          success: (value) {
            return value;
          },
          error: (error) => throw error,
        );
      },
      onError: _onError,
    );
  }
}

@freezed
class RefreshTokenResponse with _$RefreshTokenResponse {
  const factory RefreshTokenResponse({
    @JsonKey(name: 'token') required String token,
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _RefreshTokenResponse;
  factory RefreshTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenResponseFromJson(json);
}

@riverpod
StorageClient<String> tokenStorageClient(TokenStorageClientRef ref) {
  final errorTracking = ref.watch(errorTrackingClientProvider);
  final logger = ref.watch(loggerClientProvider);
  return SecureStorageClient<String>(
    key: SecureStorageConstants.tokenKey,
    fromJson: (value) => value['token'],
    toJson: (value) => Map.fromEntries([MapEntry('token', value)]),
    secureStorage: const FlutterSecureStorage(),
    talker: logger,
    onErrorTrack: errorTracking,
  );
}

@riverpod
StorageClient<String> refreshTokenStorageClient(
    RefreshTokenStorageClientRef ref) {
  final errorTracking = ref.watch(errorTrackingClientProvider);
  final logger = ref.watch(loggerClientProvider);
  return SecureStorageClient<String>(
    key: SecureStorageConstants.refreshTokenKey,
    fromJson: (value) => value['refresh_token'],
    toJson: (value) => Map.fromEntries([MapEntry('refresh_token', value)]),
    secureStorage: const FlutterSecureStorage(),
    talker: logger,
    onErrorTrack: errorTracking,
  );
}

@riverpod
ApiClient apiClient(ApiClientRef ref) {
  final errorTracking = ref.watch(errorTrackingClientProvider);
  final logger = ref.watch(loggerClientProvider);
  final tokenStorage = ref.watch(tokenStorageClientProvider);
  final refreshTokenStorage = ref.watch(refreshTokenStorageClientProvider);

  return ApiClient(
    baseUrl: ApiConstants.baseUrl,
    tokenStorageClient: tokenStorage,
    refreshTokenStorageClient: refreshTokenStorage,
    logger: logger,
    errorTracking: errorTracking,
  );
}

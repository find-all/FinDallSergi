import 'dart:io';

import 'package:fin_dall/core/clients/error_tracking_client/error_tracking_client.dart';
import 'package:fin_dall/core/clients/http_client/api_client.dart';
import 'package:fin_dall/core/clients/http_client/api_response.dart';
import 'package:fin_dall/core/constants/api_constants.dart';
import 'package:fin_dall/core/error/json_serialization_failure.dart';
import 'package:fin_dall/core/utils/result.dart';
import 'package:fin_dall/features/profile/data/models/profile_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_remote_datasource.g.dart';

abstract class ProfileRemoteDatasource {
  Future<Result<ProfileModel>> getProfile({required int userId});
  Future<Result<ProfileModel>> updateName(
      {required int userId, required String name});
  Future<Result<ProfileModel>> updateImage(
      {required int userId, required File image});
  Future<Result<ProfileModel>> changePassword(
      {required int userId, required String newPassword});
  Future<Result<void>> deleteAccount({
    required int userId,
  });
}

class ProfileRemoteDatasourceImpl implements ProfileRemoteDatasource {
  final ApiClient _apiClient;

  final void Function(Object error, StackTrace stackTrace)? _onErrorTrack;

  ProfileRemoteDatasourceImpl({
    void Function(Object error, StackTrace stackTrace)? onErrorTrack,
    required ApiClient apiClient,
  })  : _onErrorTrack = onErrorTrack,
        _apiClient = apiClient;

  @override
  Future<Result<ProfileModel>> getProfile({
    required int userId,
  }) async {
    final result = await _apiClient.get(
      path: ApiConstants.profile(userId),
    );

    return result.when(
      success: (data) {
        if (data is MapApiResponse) {
          final profile = ProfileModel.fromJson(data.body);
          return Result.success(profile);
        }

        final failure = FromJsonFailure(
          error: 'Response is not a MapApiResponse',
          stackTrace: StackTrace.current,
        );

        _onErrorTrack?.call(failure.error, failure.stackTrace);

        return Result.error(
          failure,
        );
      },
      error: (failure) {
        return Result.error(failure);
      },
    );
  }

  @override
  Future<Result<ProfileModel>> updateName(
      {required int userId, required String name}) async {
    final result = await _apiClient.put(
      path: ApiConstants.profile(userId),
      body: {
        'name': name,
      },
    );

    return result.when(
      success: (data) {
        if (data is MapApiResponse && data.body.containsKey('model')) {
          final profile = ProfileModel.fromJson(data.body['model']);
          return Result.success(profile);
        }

        final failure = FromJsonFailure(
          error: 'Response is not a MapApiResponse or does not contain model',
          stackTrace: StackTrace.current,
        );

        _onErrorTrack?.call(failure.error, failure.stackTrace);

        return Result.error(
          failure,
        );
      },
      error: (failure) {
        return Result.error(failure);
      },
    );
  }

  @override
  Future<Result<ProfileModel>> updateImage(
      {required int userId, required File image}) async {
    throw UnimplementedError();
  }

  @override
  Future<Result<ProfileModel>> changePassword(
      {required int userId, required String newPassword}) async {
    final result = await _apiClient.put(
      path: ApiConstants.profile(userId),
      body: {
        'password': newPassword,
      },
    );

    return result.when(
      success: (data) {
        if (data is MapApiResponse && data.body.containsKey('model')) {
          final profile = ProfileModel.fromJson(data.body['model']);
          return Result.success(profile);
        }

        final failure = FromJsonFailure(
          error: 'Response is not a MapApiResponse or does not contain model',
          stackTrace: StackTrace.current,
        );

        _onErrorTrack?.call(failure.error, failure.stackTrace);

        return Result.error(
          failure,
        );
      },
      error: (failure) {
        return Result.error(failure);
      },
    );
  }

  @override
  Future<Result<void>> deleteAccount({required int userId}) async {
    throw UnimplementedError();
  }
}

@riverpod
ProfileRemoteDatasource profileRemoteDatasource(
    ProfileRemoteDatasourceRef ref) {
  final errorTracking = ref.watch(errorTrackingClientProvider);

  final apiClient = ref.watch(apiClientProvider);
  return ProfileRemoteDatasourceImpl(
    onErrorTrack: errorTracking,
    apiClient: apiClient,
  );
}

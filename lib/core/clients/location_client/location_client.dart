// ignore_for_file: invalid_annotation_target
import 'package:fin_dall/core/clients/error_tracking_client/error_tracking_client.dart';
import 'package:fin_dall/core/clients/logger_client/logger_client.dart';
import 'package:fin_dall/core/error/general_failure.dart';
import 'package:fin_dall/core/error/location_failure.dart';
import 'package:fin_dall/core/utils/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'location_client.freezed.dart';
part 'location_client.g.dart';

@freezed
class Coordinates with _$Coordinates {
  const factory Coordinates({
    required double latitude,
    required double longitude,
  }) = _Coordinates;
}

class LocationClient {
  final Talker _talker;

  final Future<void> Function(Object? e, StackTrace s) _errorTracking;

  LocationClient({
    required Talker talker,
    required Future<void> Function(Object? e, StackTrace s) errorTracking,
  })  : _talker = talker,
        _errorTracking = errorTracking;

  Future<Result<Coordinates>> getCurrentLocation() async {
    return Result.asyncGuard(() async {
      _talker.info('Getting current location.');

      // Chek service status
      final enableResult = await isLocationServiceEnabled();

      if (enableResult.isError) {
        throw Result.error(enableResult.getErrorOrThrow());
      }

      if (enableResult.getOrThrow() == false) {
        throw NoServiceEnabledFailure(
          error: 'Location service is not enabled.',
          stackTrace: StackTrace.current,
          message: 'Location service is not enabled.',
        );
      }

      // Check permission status
      final permissionResult = await isLocationPermissionGranted();

      if (permissionResult.isError) {
        throw Result.error(permissionResult.getErrorOrThrow());
      }

      if (permissionResult.getOrThrow() == false) {
        final requestPermissionResult = await requestLocationPermission();

        if (requestPermissionResult.isError) {
          throw Result.error(requestPermissionResult.getErrorOrThrow());
        }

        if (requestPermissionResult.getOrThrow() == false) {
          throw NoLocationPermissionFailure(
            error: 'Location permission is not granted.',
            stackTrace: StackTrace.current,
            message: 'Location permission is not granted.',
          );
        }
      }

      final result = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);

      _talker.info('Current location: $result');

      return Coordinates(
        latitude: result.latitude,
        longitude: result.longitude,
      );
    }, onError: (e, s) {
      _errorTracking.call(e, s);

      if (e is LocationFailure) {
        return e;
      }

      return UnknownFailure(
        error: e.toString(),
        stackTrace: s,
        message: 'Error getting current location.',
      );
    });
  }

  Future<Result<bool>> isLocationPermissionGranted() async {
    return Result.asyncGuard(() async {
      _talker.info('Checking location permission status.');
      final result = await Geolocator.checkPermission();
      _talker.info('Location permission status: $result');
      return result == LocationPermission.always ||
          result == LocationPermission.whileInUse;
    }, onError: (e, s) {
      _errorTracking.call(e, s);
      return UnknownFailure(
        error: e.toString(),
        stackTrace: s,
        message: 'Error accessing location permission status.',
      );
    });
  }

  Future<Result<bool>> isLocationServiceEnabled() async {
    return Result.asyncGuard(
      () async {
        _talker.info('Checking location service status.');
        final result = await Geolocator.isLocationServiceEnabled();
        _talker.info('Location service status: $result');
        return result;
      },
      onError: (e, s) {
        _errorTracking.call(e, s);
        return UnknownFailure(
          error: e.toString(),
          stackTrace: s,
          message: 'Error accessing location service status.',
        );
      },
    );
  }

  Future<Result<bool>> requestLocationPermission() async {
    return Result.asyncGuard(
      () async {
        _talker.info('Requesting location permission.');
        final result = await Geolocator.requestPermission();
        _talker.info('Location permission status: $result');
        return result == LocationPermission.always ||
            result == LocationPermission.whileInUse;
      },
      onError: (e, s) {
        _errorTracking.call(e, s);
        return UnknownFailure(
          error: e.toString(),
          stackTrace: s,
          message: 'Error requesting location permission.',
        );
      },
    );
  }
}

@riverpod
LocationClient locationClient(LocationClientRef ref) {
  final logger = ref.watch(loggerClientProvider);

  final errorTracking = ref.watch(errorTrackingClientProvider);

  return LocationClient(
    talker: logger,
    errorTracking: errorTracking,
  );
}

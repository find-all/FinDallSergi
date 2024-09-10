import 'package:fin_dall/core/error/failure.dart';

sealed class LocationFailure extends Failure {
  const LocationFailure({
    required super.error,
    required super.stackTrace,
    required super.message,
  });
}

final class NoLocationPermissionFailure extends LocationFailure {
  const NoLocationPermissionFailure({
    required super.error,
    required super.stackTrace,
    required super.message,
  });
}

final class NoServiceEnabledFailure extends LocationFailure {
  const NoServiceEnabledFailure({
    required super.error,
    required super.stackTrace,
    required super.message,
  });
}

final class NoAddressFoundFailure extends LocationFailure {
  const NoAddressFoundFailure({
    required super.error,
    required super.stackTrace,
    required super.message,
  });
}

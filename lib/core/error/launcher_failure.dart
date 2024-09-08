import 'package:fin_dall/core/error/failure.dart';

sealed class LauncherFailure extends Failure {
  const LauncherFailure({
    required super.message,
    required super.error,
    required super.stackTrace,
  });
}

final class CouldNotLaunchPhoneFailure extends LauncherFailure {
  const CouldNotLaunchPhoneFailure({
    required super.message,
    required super.error,
    required super.stackTrace,
  });
}

final class CouldNotLaunchEmailFailure extends LauncherFailure {
  const CouldNotLaunchEmailFailure({
    required super.message,
    required super.error,
    required super.stackTrace,
  });
}

final class CouldNotLaunchUrlFailure extends LauncherFailure {
  const CouldNotLaunchUrlFailure({
    required super.message,
    required super.error,
    required super.stackTrace,
  });
}

final class CouldNotLaunchWhatsAppFailure extends LauncherFailure {
  const CouldNotLaunchWhatsAppFailure({
    required super.message,
    required super.error,
    required super.stackTrace,
  });
}

final class CouldNotLaunchTelegramFailure extends LauncherFailure {
  const CouldNotLaunchTelegramFailure({
    required super.message,
    required super.error,
    required super.stackTrace,
  });
}

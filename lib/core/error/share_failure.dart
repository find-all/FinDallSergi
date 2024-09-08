import 'package:fin_dall/core/error/failure.dart';

/// Failure when sharing content.
///
/// This failure is thrown when the content could not be shared.
///
class CouldNotShareFailure extends Failure {
  CouldNotShareFailure({
    required super.message,
    required super.error,
    required super.stackTrace,
  });
}

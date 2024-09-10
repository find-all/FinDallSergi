import 'package:fin_dall/core/error/failure.dart';

sealed class GeneralFailure extends Failure {
  const GeneralFailure({
    required super.error,
    required super.stackTrace,
    required super.message,
  });
}

final class UnknownFailure extends GeneralFailure {
  const UnknownFailure({
    required super.error,
    required super.stackTrace,
    required super.message,
  });
}

import 'package:fin_dall/core/error/failure.dart';

sealed class JsonSerializationFailure extends Failure {
  const JsonSerializationFailure({
    required super.message,
    required super.error,
    required super.stackTrace,
  });
}

final class FromJsonFailure extends JsonSerializationFailure {
  const FromJsonFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
          message: 'Error while parsing JSON',
        );
}

final class ToJsonFailure extends JsonSerializationFailure {
  const ToJsonFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
          message: 'Error while serializing to JSON',
        );
}

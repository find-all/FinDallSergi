import 'package:fin_dall/core/error/failure.dart';

sealed class StorageFailure extends Failure {
  const StorageFailure({
    required super.message,
    required super.error,
    required super.stackTrace,
  });
}

final class ReadFailure extends StorageFailure {
  const ReadFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
          message: 'Error while reading from storage',
        );
}

final class WriteFailure extends StorageFailure {
  const WriteFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
          message: 'Error while writing to storage',
        );
}

final class DeleteFailure extends StorageFailure {
  const DeleteFailure({
    required super.error,
    required super.stackTrace,
  }) : super(
          message: 'Error while deleting from storage',
        );
}

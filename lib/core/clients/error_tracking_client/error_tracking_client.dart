import 'package:fin_dall/core/clients/logger_client/custom_logger_types.dart';
import 'package:fin_dall/core/clients/logger_client/logger_client.dart';
import 'package:fin_dall/core/error/failure.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'error_tracking_client.g.dart';

@riverpod
Future<void> Function(Object? e, StackTrace s) errorTrackingClient(
    ErrorTrackingClientRef ref) {
  return (e, s) async {
    final logger = ref.watch(loggerClientProvider);

    if (e is Failure) {
      logger.logTyped(
        FailureLog(
          e.message,
          failure: e,
          stack: e.stackTrace,
        ),
      );
    } else {
      logger.error(
        e.toString(),
        e,
        s,
      );
    }
  };
}

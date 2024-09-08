import 'package:fin_dall/core/error/share_failure.dart';
import 'package:fin_dall/core/utils/result.dart';
import 'package:share_plus/share_plus.dart';
import 'package:talker_flutter/talker_flutter.dart';

class ShareClient {
  final Talker _talker;

  final Future<void> Function(Object? e, StackTrace s) _errorTracking;

  ShareClient({
    required Talker talker,
    required Future<void> Function(Object? e, StackTrace s) errorTracking,
  })  : _talker = talker,
        _errorTracking = errorTracking;

  Future<Result<void>> share(
      {required String content, String? description}) async {
    return Result.asyncGuard(
      () async {
        _talker.info('Sharing content $content.');

        await Share.share(content, subject: description);
      },
      onError: (e, s) {
        _errorTracking(e, s);

        return CouldNotShareFailure(
          error: e.toString(),
          message: 'Could not share content.',
          stackTrace: s,
        );
      },
    );
  }
}

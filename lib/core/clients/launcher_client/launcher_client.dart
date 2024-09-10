import 'package:fin_dall/core/error/launcher_failure.dart';
import 'package:fin_dall/core/utils/result.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class LauncherClient {
  final Talker _talker;

  final Future<void> Function(Object? e, StackTrace s) _errorTracking;

  LauncherClient({
    required Talker talker,
    required Future<void> Function(Object? e, StackTrace s) errorTracking,
  })  : _talker = talker,
        _errorTracking = errorTracking;

  Future<Result<void>> launchPhone({required String phoneNumber}) async {
    return Result.asyncGuard(
      () async {
        _talker.info('Launching phone with number $phoneNumber.');

        final uri = Uri.parse('tel:$phoneNumber');

        final result = await canLaunchUrl(uri);

        if (!result) {
          throw CouldNotLaunchPhoneFailure(
            error: 'Could not launch phone.',
            message: 'Could not launch phone.',
            stackTrace: StackTrace.current,
          );
        }

        await launchUrl(Uri.parse('tel:$phoneNumber'));

        _talker.info('Phone launched.');
      },
      onError: (e, s) {
        _errorTracking(e, s);

        return CouldNotLaunchPhoneFailure(
          error: e.toString(),
          message: 'Could not launch phone.',
          stackTrace: s,
        );
      },
    );
  }

  Future<Result<void>> launchWeb({required String url}) async {
    return Result.asyncGuard(
      () async {
        _talker.info('Launching url $url.');

        final uri = Uri.parse(url);

        final result = await canLaunchUrl(uri);

        if (!result) {
          throw CouldNotLaunchUrlFailure(
            error: 'Could not launch url.',
            message: 'Could not launch url.',
            stackTrace: StackTrace.current,
          );
        }

        await launchUrl(uri);

        _talker.info('Url launched.');
      },
      onError: (e, s) {
        _errorTracking(e, s);

        return CouldNotLaunchUrlFailure(
          error: e.toString(),
          message: 'Could not launch url.',
          stackTrace: s,
        );
      },
    );
  }

  Future<Result<void>> launchTelegram({required String user}) async {
    return Result.asyncGuard(
      () async {
        _talker.info('Launching telegram $user');

        final url = Uri.parse('https://t.me/$user');

        final canLaunch = await launchUrl(url);

        if (!canLaunch) {
          throw CouldNotLaunchTelegramFailure(
            message: 'Could not launch telegram',
            error: 'Can not launch telegram',
            stackTrace: StackTrace.current,
          );
        }

        _talker.info('Telegram launched.');
      },
      onError: (e, s) {
        _errorTracking(e, s);

        return CouldNotLaunchTelegramFailure(
          error: e.toString(),
          message: 'Could not launch telegram',
          stackTrace: s,
        );
      },
    );
  }

  Future<Result<void>> launchEmail(
      {required String email, String? subject, String? body}) {
    return Result.asyncGuard(
      () async {
        _talker.info('Launching email $email');

        final url = Uri.parse('mailto:$email?subject=$subject&body=$body');

        final canLaunch = await launchUrl(url);

        if (!canLaunch) {
          throw CouldNotLaunchEmailFailure(
            message: 'Could not launch email',
            error: 'Can not launch email',
            stackTrace: StackTrace.current,
          );
        }

        _talker.info('Email launched.');
      },
      onError: (e, s) {
        _errorTracking(e, s);

        return CouldNotLaunchEmailFailure(
          error: e.toString(),
          message: 'Could not launch email',
          stackTrace: s,
        );
      },
    );
  }

  Future<Result<void>> launchWhatsapp({required String phone}) async {
    return Result.asyncGuard(
      () async {
        _talker.info('Launching whatsapp $phone');

        final url = Uri.parse('https://wa.me/$phone');

        final canLaunch = await launchUrl(url);

        if (!canLaunch) {
          throw CouldNotLaunchWhatsAppFailure(
            message: 'Could not launch whatsapp',
            error: 'Can not launch whatsapp',
            stackTrace: StackTrace.current,
          );
        }

        _talker.info('Whatsapp launched.');
      },
      onError: (e, s) {
        _errorTracking(e, s);

        return CouldNotLaunchWhatsAppFailure(
          error: e.toString(),
          message: 'Could not launch whatsapp',
          stackTrace: s,
        );
      },
    );
  }
}

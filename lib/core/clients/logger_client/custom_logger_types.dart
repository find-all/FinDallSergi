import 'dart:convert';

import 'package:fin_dall/core/error/api_failure.dart';
import 'package:fin_dall/core/error/failure.dart';
import 'package:http/http.dart';
import 'package:talker_flutter/talker_flutter.dart';

const encoder = JsonEncoder.withIndent('  ');

class FailureLog extends TalkerLog {
  FailureLog(
    super.message, {
    required this.failure,
    required this.stack,
  });

  final Object failure;
  final StackTrace stack;

  @override
  AnsiPen get pen => (AnsiPen()..xterm(196));

  @override
  String get key => TalkerLogType.error.key;

  @override
  String generateTextMessage({TimeFormat timeFormat = TimeFormat.timeAndSeconds}) {
    var msg = '[$title] $message';

    if (failure is Failure) {
      msg += '\nFailure Message: ${(failure as Failure).message}';
      msg += '\nFailure error: ${(failure as Failure).error}';
      msg += '\nFailure stack: ${(failure as Failure).stackTrace.toString()}';
      if (failure is ApiFailure) {
        msg += '\nFailure status code: ${(failure as ApiFailure).statusCode}';
      }
    } else {
      msg += '\nFailure Message: ${failure.toString()}';
      msg += '\nFailure stack: ${stack.toString()}';
    }

    return msg;
  }
}

class HttpRequestLog extends TalkerLog {
  HttpRequestLog(
    String super.title, {
    required this.request,
  });

  final BaseRequest request;

  @override
  AnsiPen get pen => (AnsiPen()..xterm(219));

  @override
  String get key => TalkerLogType.httpRequest.key;

  @override
  String generateTextMessage({TimeFormat timeFormat = TimeFormat.timeAndSeconds}) {
    var msg = '[$title] [${request.method}] $message';

    final headers = request.headers;

    try {
      if (headers.isNotEmpty) {
        final prettyHeaders = encoder.convert(headers);
        msg += '\nHeaders: $prettyHeaders';
      }
    } catch (_) {
      msg += '\nHeaders not available';
    }
    return msg;
  }
}

class HttpResponseLog extends TalkerLog {
  HttpResponseLog(
    String super.title, {
    required this.response,
  });

  final BaseResponse response;

  @override
  AnsiPen get pen => (AnsiPen()..xterm(46));

  @override
  String get title => TalkerLogType.httpResponse.key;

  @override
  String generateTextMessage({TimeFormat timeFormat = TimeFormat.timeAndSeconds}) {
    var msg = '[$title] [${response.request?.method}] $message';

    final headers = response.request?.headers;

    msg += '\nStatus: ${response.statusCode}';

    try {
      if (headers?.isNotEmpty ?? false) {
        final prettyHeaders = encoder.convert(headers);
        msg += '\nHeaders: $prettyHeaders';
      }
    } catch (_) {
      msg += '\nHeaders not available';
    }
    return msg;
  }
}

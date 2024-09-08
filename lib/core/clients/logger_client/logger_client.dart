import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'logger_client.g.dart';

@riverpod
Talker loggerClient(LoggerClientRef ref) {
  final talker = Talker(
    settings: TalkerSettings(
      enabled: true,
    ),
  );

  return talker;
}

import 'package:fin_dall/core/clients/error_tracking_client/error_tracking_client.dart';
import 'package:fin_dall/core/clients/logger_client/logger_client.dart';
import 'package:fin_dall/core/clients/storage_client/secure_storage_client.dart';
import 'package:fin_dall/core/clients/storage_client/storage_client.dart';
import 'package:fin_dall/core/constants/storage_constants.dart';
import 'package:fin_dall/features/authentication/data/models/user_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_local_datasource.g.dart';

@riverpod
StorageClient<UserModel> authenticationLocalDatasource(
    AuthenticationLocalDatasourceRef ref) {
  final logger = ref.watch(loggerClientProvider);

  final errorTraker = ref.watch(errorTrackingClientProvider);

  return SecureStorageClient(
    key: SecureStorageConstants.userKey,
    fromJson: (map) => UserModel.fromJson(map),
    toJson: (user) => user.toJson(),
    secureStorage: const FlutterSecureStorage(),
    onErrorTrack: errorTraker,
    talker: logger,
  );
}

import 'dart:convert';

import 'package:fin_dall/core/clients/logger_client/custom_logger_types.dart';
import 'package:fin_dall/core/clients/storage_client/storage_client.dart';
import 'package:fin_dall/core/error/failure.dart';
import 'package:fin_dall/core/error/storage_failure.dart';
import 'package:fin_dall/core/utils/result.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:talker_flutter/talker_flutter.dart';

class SecureStorageClient<T> implements StorageClient<T> {
  // Secure storage instance to read and write data on the device local storage.
  final FlutterSecureStorage _secureStorage;

  // Key to store the data in the local storage.
  final String _key;

  // Function to convert the json data to an instance of [T].
  final FromJson<T> _fromJson;

  // Function to convert the instance of [T] to json data.
  final ToJson<T> _toJson;

  // Logger to log the errors and debug messages.
  final Talker? _talker;

  // Error tracking.
  // Use this function to track errors in some external service like sentry or firebase.
  final void Function(Object error, StackTrace stackTrace)? _onErrorTrack;

  SecureStorageClient({
    required String key,
    required FromJson<T> fromJson,
    required ToJson<T> toJson,
    required FlutterSecureStorage secureStorage,
    Talker? talker,
    void Function(Object error, StackTrace stackTrace)? onErrorTrack,
  })  : _key = key,
        _fromJson = fromJson,
        _toJson = toJson,
        _secureStorage = secureStorage,
        _talker = talker,
        _onErrorTrack = onErrorTrack;

  @override
  Future<Result<T>> read() async {
    return Result.asyncGuard(
      () async {
        _talker?.info('Reading data from local storage with key: $_key');

        // Check if the key exists in the local storage. If not, return a [ReadFailure].
        if (!await _secureStorage.containsKey(key: _key)) {
          throw ReadFailure(
            error: 'No data found',
            stackTrace: StackTrace.current,
          );
        }

        // Get the data from the local storage.
        final resultEncoded = await _secureStorage.read(key: _key);

        // If the data is null, return a [ReadFailure].
        if (resultEncoded == null) {
          throw ReadFailure(
            error: 'No data found',
            stackTrace: StackTrace.current,
          );
        }

        // Convert the json data to an instance of [T].
        final result = _fromJson(jsonDecode(resultEncoded));

        _talker?.info(
            'Data read successfully from local storage with key: $_key and value: $result');

        // Return the instance of [T].
        return result;
      },
      onError: (e, s) {
        _talker?.logTyped(
          FailureLog(
            'Error while reading data from local storage with key: $_key',
            failure: e,
            stack: s,
          ),
        );

        _onErrorTrack?.call(e, s);

        if (e is Failure) {
          return e;
        }

        return ReadFailure(
          error: e.toString(),
          stackTrace: s,
        );
      },
    );
  }

  @override
  Future<Result<void>> write(T data) async {
    return Result.asyncGuard(
      () async {
        _talker?.info(
            'Writing data to local storage with key: $_key and value: $data');
        // Convert the instance of [T] to json data.
        final jsonResult = _toJson(data);

        await _secureStorage.write(
          key: _key,
          value: jsonEncode(
            jsonResult,
          ),
        );

        _talker?.info(
            'Data written successfully to local storage with key: $_key and value: $data');
      },
      onError: (e, s) {
        _talker?.logTyped(
          FailureLog(
            'Error while writing data to local storage with key: $_key and value: $data',
            failure: e,
            stack: s,
          ),
        );

        _onErrorTrack?.call(e, s);
        if (e is Failure) {
          return e;
        }

        return WriteFailure(
          error: e.toString(),
          stackTrace: s,
        );
      },
    );
  }

  @override
  Future<Result<void>> delete() async {
    return Result.asyncGuard(
      () async {
        _talker?.info('Deleting data from local storage with key: $_key');

        // Check if the key exists in the local storage. If not, just return. It is not an error.
        if (!await _secureStorage.containsKey(key: _key)) {
          return;
        }

        // Remove the data from the local storage.
        await _secureStorage.delete(key: _key);

        _talker?.info(
            'Data deleted successfully from local storage with key: $_key');
      },
      onError: (e, s) {
        _talker?.logTyped(
          FailureLog(
            'Error while deleting data from local storage with key: $_key',
            failure: e,
            stack: s,
          ),
        );

        _onErrorTrack?.call(e, s);

        if (e is Failure) {
          return e;
        }

        return DeleteFailure(
          error: e.toString(),
          stackTrace: s,
        );
      },
    );
  }

  @override
  Future<Result<List<T>>> readList() async {
    return Result.asyncGuard(
      () async {
        _talker
            ?.info('Reading list of data from local storage with key: $_key');

        // Check if the key exists in the local storage. If not, return a [ReadFailure].
        if (!await _secureStorage.containsKey(key: _key)) {
          throw ReadFailure(
            error: 'No data found',
            stackTrace: StackTrace.current,
          );
        }

        // Get the data from the local storage.
        final resultEncoded = await _secureStorage.read(key: _key);

        // If the data is null, return a [ReadFailure].
        if (resultEncoded == null) {
          throw ReadFailure(
            error: 'No data found',
            stackTrace: StackTrace.current,
          );
        }

        final resultDecoded = jsonDecode(resultEncoded) as List<dynamic>;

        final result =
            resultDecoded.map((e) => _fromJson(jsonDecode(e))).toList();

        _talker?.info(
            'List of data read successfully from local storage with key: $_key and value: $result');

        return result;
      },
      onError: (e, s) {
        _talker?.logTyped(
          FailureLog(
            'Error while reading list of data from local storage with key: $_key',
            failure: e,
            stack: s,
          ),
        );

        _onErrorTrack?.call(e, s);

        if (e is Failure) {
          return e;
        }

        return ReadFailure(
          error: e.toString(),
          stackTrace: s,
        );
      },
    );
  }

  @override
  Future<Result<void>> writeList(List<T> data) async {
    return Result.asyncGuard(
      () async {
        _talker?.info(
            'Writing list of data to local storage with key: $_key and value: $data');

        // Convert the list of [T] to json data.
        final result = data.map((e) => jsonEncode(_toJson(e))).toList();

        // Write the json data to the local storage.
        await _secureStorage.write(key: _key, value: jsonEncode(result));

        _talker?.info(
            'List of data written successfully to local storage with key: $_key and value: $data');
      },
      onError: (e, s) {
        _talker?.logTyped(
          FailureLog(
            'Error while writing list of data to local storage with key: $_key',
            failure: e,
            stack: s,
          ),
        );

        _onErrorTrack?.call(e, s);
        if (e is Failure) {
          return e;
        }

        return WriteFailure(
          error: e.toString(),
          stackTrace: s,
        );
      },
    );
  }
}

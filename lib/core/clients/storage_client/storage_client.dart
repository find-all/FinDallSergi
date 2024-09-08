import 'dart:async';

import 'package:fin_dall/core/error/json_serialization_failure.dart';
import 'package:fin_dall/core/error/storage_failure.dart';
import 'package:fin_dall/core/utils/result.dart';

// Alias for the function that converts the json data to an instance of [T].
typedef FromJson<T> = T Function(Map<String, dynamic> json);
// Alias for the function that converts the instance of [T] to json data.
typedef ToJson<T> = Map<String, dynamic> Function(T data);

/// Abstract class to read, write and delete data from the storage.
///
/// The [T] is the type of the data that will be stored.
///
/// Example:
///
/// ```dart
///
/// final storageClient = StorageClient<UserModel>();
///
/// storageClient.read().then((result) {
///   result.when(
///   success: (data) {
///   print(data);
///   },
///  error: (error) {
///   print(error);
///   },
/// );
/// });
///  ```
abstract class StorageClient<T> {
  /// Reads the data from the storage.
  ///
  /// Returns [Result] with the data of type [T] if the operation is successful.
  ///
  /// Returns [Result] with [ReadFailure] if the operation fails.
  ///
  /// Returns [Result] with [FromJsonFailure] if the operation throws an exception when converting [T].
  ///
  Future<Result<T>> read();

  /// Writes the data to the storage.
  ///
  /// Returns [Result] with [void] if the operation is successful.
  ///
  /// Returns [Result] with [WriteFailure] if the operation fails.
  ///
  /// Returns [Result] with [ToJsonFailure] if the operation throws an exception when converting [T].
  ///
  Future<Result<void>> write(T value);

  /// Deletes the data from the storage.
  ///
  /// Returns [Result] with [void] if the operation is successful.
  ///
  /// Returns [Result] with [DeleteFailure] if the operation fails.
  ///
  Future<Result<void>> delete();

  /// Read list of data from the storage.
  ///
  /// Returns [Result] with the list of data of type [T] if the operation is successful.
  ///
  /// Returns [Result] with [ReadFailure] if the operation fails.
  ///
  /// Returns [Result] with [FromJsonFailure] if the operation throws an exception when converting [T].
  ///
  Future<Result<List<T>>> readList();

  /// Writes a list of [T] to the storage.
  ///
  /// Returns [Result] with [void] if the operation is successful.
  ///
  /// Returns [Result] with [WriteFailure] if the operation fails.
  ///
  /// Returns [Result] with [ToJsonFailure] if the operation throws an exception when converting [T].
  ///
  Future<Result<void>> writeList(List<T> data);
}

import 'dart:io';

import 'package:fin_dall/core/utils/result.dart';
import 'package:fin_dall/features/profile/domain/entities/profile.dart';

abstract class ProfileRepository {
  /// Get the profile of the user
  ///
  /// Returns a [Result] with the profile of the user
  ///
  /// If the profile is successfully loaded, the [Result] will contain the profile
  ///
  /// If the profile is not loaded, the [Result] will contain an error
  ///
  Future<Result<Profile>> getProfile();

  /// Update name of the user
  ///
  /// [name] The new name of the user
  ///
  /// Returns a [Result] with the profile of the user
  ///
  /// If the profile is successfully updated, the [Result] will contain the profile
  ///
  /// If the profile is not updated, the [Result] will contain an error
  ///
  Future<Result<Profile>> updateName({required String name});

  /// Update image of the user
  ///
  /// [image] The new image of the user
  ///
  /// Returns a [Result] with the profile of the user
  ///
  /// If the profile is successfully updated, the [Result] will contain the profile
  ///
  /// If the profile is not updated, the [Result] will contain an error
  ///
  Future<Result<Profile>> updateImage({required File image});

  /// Change user password
  ///
  /// [currentPassword] The current password of the user
  ///
  /// [newPassword] The new password of the user
  ///
  /// Returns a [Result] with the profile of the user
  ///
  /// If the profile is successfully updated, the [Result] will contain the profile
  ///
  /// If the profile is not updated, the [Result] will contain an error
  ///
  Future<Result<Profile>> changePassword({required String newPassword});

  /// Delete the user account
  ///
  /// Removes the user account from the system
  ///
  /// Returns a [Result] with no data
  ///
  /// If the operation is successful, the [Result] will contain no data
  ///
  /// If the operation is not successful, the [Result] will contain an error
  ///
  Future<Result<void>> deleteAccount();
}

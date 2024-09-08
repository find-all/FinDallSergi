import 'dart:io';

import 'package:fin_dall/core/clients/storage_client/storage_client.dart';
import 'package:fin_dall/core/utils/result.dart';
import 'package:fin_dall/features/authentication/data/datasources/local/authentication_local_datasource.dart';
import 'package:fin_dall/features/authentication/data/models/user_model.dart';
import 'package:fin_dall/features/profile/data/datasources/remote/profile_remote_datasource.dart';
import 'package:fin_dall/features/profile/domain/entities/profile.dart';
import 'package:fin_dall/features/profile/domain/repositories/profile_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_repository_impl.g.dart';

const _profile = Profile(
  id: 1,
  name: 'John Doe',
  email: 'johndoe@example.com',
  photoUrl: 'https://picsum.photos/200/',
);

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDatasource _profileRemoteDatasource;
  final StorageClient<UserModel> _authenticationLocalDatasource;

  ProfileRepositoryImpl({
    required ProfileRemoteDatasource profileRemoteDatasource,
    required StorageClient<UserModel> authenticationLocalDatasource,
  })  : _profileRemoteDatasource = profileRemoteDatasource,
        _authenticationLocalDatasource = authenticationLocalDatasource;

  @override
  Future<Result<Profile>> getProfile() async {
    final userStorageResult = await _authenticationLocalDatasource.read();

    if (userStorageResult is Error) {
      return Result.error(userStorageResult.getErrorOrThrow());
    }

    final userId = userStorageResult.getOrThrow().id;

    await Future.delayed(const Duration(seconds: 1));

    return Result.success(_profile);

    //final result = await _profileRemoteDatasource.getProfile(
    //  userId: userId,
    //);
//
    //return result.when(
    //  success: (profileModel) => Result.success(
    //    ProfileMapper.formProfileModel(profileModel),
    //  ),
    //  error: (e) => Result.error(e),
    //);
  }

  @override
  Future<Result<Profile>> updateImage({required File image}) async {
    final userStorageResult = await _authenticationLocalDatasource.read();

    if (userStorageResult is Error) {
      return Result.error(userStorageResult.getErrorOrThrow());
    }

    final userId = userStorageResult.getOrThrow().id;

    await Future.delayed(const Duration(seconds: 1));
    return Result.success(_profile);

    //final result = await _profileRemoteDatasource.updateImage(
    //  userId: userId,
    //  image: image,
    //);
//
    //return result.when(
    //  success: (profileModel) => Result.success(
    //    ProfileMapper.formProfileModel(profileModel),
    //  ),
    //  error: (e) => Result.error(e),
    //);
  }

  @override
  Future<Result<Profile>> updateName({required String name}) async {
    final userStorageResult = await _authenticationLocalDatasource.read();

    if (userStorageResult is Error) {
      return Result.error(userStorageResult.getErrorOrThrow());
    }

    final userId = userStorageResult.getOrThrow().id;

    await Future.delayed(const Duration(seconds: 1));

    return Result.success(_profile.copyWith(name: name));
    //final result =
    //    await _profileRemoteDatasource.updateName(userId: userId, name: name);
//
    //return result.when(
    //  success: (profileModel) => Result.success(
    //    ProfileMapper.formProfileModel(profileModel),
    //  ),
    //  error: (e) => Result.error(e),
    //);
  }

  @override
  Future<Result<Profile>> changePassword({required String newPassword}) async {
    final userStorageResult = await _authenticationLocalDatasource.read();

    if (userStorageResult is Error) {
      return Result.error(userStorageResult.getErrorOrThrow());
    }

    final userId = userStorageResult.getOrThrow().id;

    await Future.delayed(const Duration(seconds: 1));

    return Result.success(_profile);
    //final result = await _profileRemoteDatasource.changePassword(
    //    userId: userId, newPassword: newPassword);
//
    //return result.when(
    //  success: (profileModel) => Result.success(
    //    ProfileMapper.formProfileModel(profileModel),
    //  ),
    //  error: (e) => Result.error(e),
    //);
  }

  @override
  Future<Result<void>> deleteAccount() async {
    final userStorageResult = await _authenticationLocalDatasource.read();

    if (userStorageResult is Error) {
      return Result.error(userStorageResult.getErrorOrThrow());
    }
    await Future.delayed(const Duration(seconds: 1));
    return Result.success(null);
    //final result = await _profileRemoteDatasource.deleteAccount(
    //  userId: userStorageResult.getOrThrow().id,
    //);
//
    //return result.when(
    //  success: (_) => Result.success(null),
    //  error: (e) => Result.error(e),
    //);
  }
}

@riverpod
ProfileRepository profileRepository(ProfileRepositoryRef ref) {
  final profileRemoteDatasource = ref.watch(profileRemoteDatasourceProvider);
  final authenticationLocalDatasource =
      ref.watch(authenticationLocalDatasourceProvider);
  return ProfileRepositoryImpl(
    profileRemoteDatasource: profileRemoteDatasource,
    authenticationLocalDatasource: authenticationLocalDatasource,
  );
}

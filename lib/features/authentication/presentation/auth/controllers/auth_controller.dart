// ignore_for_file: invalid_annotation_target
import 'package:fin_dall/features/authentication/domain/entities/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

sealed class AuthControllerState {
  const AuthControllerState();
}

class AuthInitial extends AuthControllerState {
  const AuthInitial();
}

class Authorized extends AuthControllerState {
  final User user;
  const Authorized(this.user);
}

class Unauthorized extends AuthControllerState {
  const Unauthorized();
}

@riverpod
class AuthController extends _$AuthController {
  @override
  AuthControllerState build() {
    return const AuthInitial();
  }

  void authorized({required User user}) {
    state = Authorized(user);
  }

  void unauthorized() {
    state = const Unauthorized();
  }
}

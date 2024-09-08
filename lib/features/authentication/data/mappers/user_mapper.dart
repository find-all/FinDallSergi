import 'package:fin_dall/features/authentication/data/models/user_model.dart';
import 'package:fin_dall/features/authentication/domain/entities/user.dart';

/// [UserMapper] is a utility class that provides static methods to convert
/// between [User] and [UserModel] objects.
///
/// This is useful when you need to convert between your domain layer's [User] entity
/// and your data layer's [UserModel].
class UserMapper {
  /// Converts a [UserModel] to a [User].
  ///
  /// Example:
  /// ```dart
  /// final userModel = UserModel(id: '1', email: 'test@test.com', name: 'Test User', photoUrl: 'http://example.com/photo.jpg', isEmailVerified: true);
  /// final user = UserMapper.fromModel(userModel);
  /// ```
  static User fromModel(UserModel userModel) {
    return User(
      id: userModel.id,
      email: userModel.email,
      name: userModel.name,
      photoUrl: userModel.photoUrl,
      isEmailVerified: userModel.isEmailVerified,
    );
  }

  /// Converts a [User] to a [UserModel].
  ///
  /// Example:
  /// ```dart
  /// final user = User(id: '1', email: 'test@test.com', name: 'Test User', photoUrl: 'http://example.com/photo.jpg', isEmailVerified: true);
  /// final userModel = UserMapper.toModel(user);
  /// ```
  static UserModel toModel(User user) {
    return UserModel(
      id: user.id,
      email: user.email,
      name: user.name,
      photoUrl: user.photoUrl,
      emailVerifiedAt: user.isEmailVerified ? DateTime.now() : null,
    );
  }
}

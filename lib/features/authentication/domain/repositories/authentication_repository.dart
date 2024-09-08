import 'package:fin_dall/core/utils/result.dart';
import 'package:fin_dall/features/authentication/domain/entities/user.dart';

/// `AuthenticationRepository` is an abstract class that defines the methods
/// that must be implemented by the authentication repository.
abstract class AuthenticationRepository {
  /// `getUser` method that takes no parameters.
  ///  Returns a `Future` that resolves to a `Result<User>`.
  ///  This method is used to get the current user.
  ///
  /// Example:
  ///
  /// ```dart
  /// var result = await repository.getUser();
  /// ```
  Future<Result<User>> getUser();

  /// `signIn` method that takes an email and a password as parameters.
  /// Returns a `Future` that resolves to a `Result<User>`.
  /// This method is used to sign in to the application.
  ///
  /// Example:
  /// ```dart
  /// var result = await repository.signIn(email: "test@example.com", password: "password");
  /// ```
  Future<Result<User>> signIn(
      {required String email, required String password});

  /// `signUp` method that takes a name, an email, and a password as parameters.
  /// Returns a `Future` that resolves to a `Result<({String token, String email})>`. Is the token to verify the user account and the email of the user to resend code.
  /// This method is used to register to the application.
  ///
  /// Example:
  /// ```dart
  /// var result = await repository.signUp(name: "Test User", email: "test@example.com", password: "password");
  /// ```
  Future<Result<({String token, String email})>> signUp({
    required String name,
    required String email,
    required String password,
  });

  /// `signOut` method that takes no parameters.
  /// Returns a `Future` that resolves to a `Result<void>`.
  /// This method is used to sign out of the application.
  ///
  /// Example:
  /// ```dart
  /// var result = await repository.signOut();
  /// ```
  Future<Result<void>> signOut();

  /// `sendPasswordResetEmail` method that takes an email as a parameter.
  /// Returns a `Future` that resolves to a `Result<String>` with the token to verify later.
  /// This method is used to send a password reset email.
  ///
  /// Example:
  /// ```dart
  /// var result = await repository.sendPasswordResetEmail(email: "test@example.com");
  /// ```
  Future<Result<String>> sendPasswordResetEmail({required String email});

  /// `resetPassword` method that takes a password and a token as parameters.
  ///
  /// Returns a `Future` that resolves to a `Result<void>`.
  ///
  /// This method is used to reset the password.
  ///
  /// Example:
  ///
  /// ```dart
  /// var result = await repository.resetPassword(password: "password", code: "1234", token: "token");
  /// ```
  ///
  Future<Result<void>> resetPassword(
      {required String password, required String code, required String token});

  /// `sendEmailVerificationEmail` method that takes an email as a parameter.
  /// Returns a `Future` that resolves to a `Result<String>`. With the token to verify the user account.
  /// This method is used to send an email verification email.
  ///
  /// Example:
  /// ```dart
  /// var result = await repository.sendEmailVerificationEmail(email: "test@example.com");
  /// ```
  Future<Result<String>> sendEmailVerificationEmail();

  /// `verifyEmail` method that takes an email and a code as parameters.
  /// Returns a `Future` that resolves to a `Result<User>`.
  /// This method is used to verify an email.
  ///
  /// Example:
  /// ```dart
  /// var result = await repository.verifyEmail(email: "test@example.com", code: "123456");
  /// ```
  Future<Result<User>> verifyUserAccount(
      {required String code, required String token});

  /// `signInWithGoogle` method that takes no parameters.
  /// Returns a `Future` that resolves to a `Result<User>`.
  /// This method is used to sign in with Google.
  ///
  /// Example:
  /// ```dart
  /// var result = await repository.signInWithGoogle();
  /// ```
  Future<Result<User>> signInWithGoogle();

  /// `signInWithApple` method that takes no parameters.
  /// Returns a `Future` that resolves to a `Result<User>`.
  /// This method is used to sign in with Apple.
  ///
  /// Example:
  /// ```dart
  /// var result = await repository.signInWithApple();
  /// ```
  Future<Result<User>> signInWithApple();
}

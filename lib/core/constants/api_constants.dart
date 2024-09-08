class ApiConstants {
  static const String baseUrl = String.fromEnvironment('base_url');

  static const String login = '/api/login';
  static const String register = '/api/register';
  static const String logout = '/api/logout';
  static const String sendVerificationCode = '/api/resend_code';
  static String verifyUser(String token) => '/api/enable_register/$token';
  static const String refreshToken = '/api/refresh';
  static const String sendPasswordResetEmail = '/api/recover-password';
  static String resetPassword(String token) => '/api/reset_password/$token';

  static String profile(int userId) => '/api/security/users/$userId';
}

import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class ApiPaths {
  static const String baseUrl = 'https://api-admin.findallapp.com/api';
  static const String refreshToken = '/refresh';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/security/reset_password';
  static const String logout = '/logout';
  static const String user = '/security/users/get_info';
}

/// Keys for local storage
///
/// Use these keys to store and retrieve data from local storage
///
class LocalStorageKey {
  static const String appTheme = 'appTheme';
  static const String appLanguage = 'appLanguage';
}

class LocalSecureStorageKey {
  static const String token = 'token';
  static const String refreshToken = 'refresh_token';
}

/// Form control names
///
/// Identifiers for form controls
class FormControlName {
  static const String name = 'name';
  static const String email = 'email';
  static const String password = 'password';
  static const String oldPassword = 'oldPassword';
  static const String newPassword = 'newPassword';
  static const String confirmPassword = 'confirmPassword';
  static const String profileImage = 'profileImage';
  static const String placeName = 'placeName';
  static const String placeUrl = 'placeUrl';
  static const String placeAddress = 'placeAddress';
  static const String reviewImages = 'reviewImages';
  static const String reviewText = 'reviewText';
  static const String reviewRating = 'reviewRating';
  static const String reviewImagesToDelete = 'reviewImagesToDelete';
}

/// Form validator configuration
///
/// Static configuration for form validators
class FormValidorConfig {
  static RegExp newPasswordRegex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
  static RegExp urlRegex =
      RegExp(r'^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$');
  static const int passwordMinLength = 8;
  static const int nameMinLength = 3;
  static const int minReviewTextLength = 4;
  static const int maxReviewTextLength = 500;
}

/// Assets paths for local images
class Assets {
  static const String logo = 'assets/img/logo.png';
  static const String logoBlue = 'assets/img/logo_blue.png';
  static const String logoWhite = 'assets/img/logo_white.png';
  static const String logoBlack = 'assets/img/logo_black.png';
  static String commonError(BuildContext context) {
    final isDark = context.isDark;
    return isDark
        ? 'assets/img/common_error_dark.svg'
        : 'assets/img/common_error_light.svg';
  }

  static String commonEmpty(BuildContext context) {
    final isDark = context.isDark;
    return isDark
        ? 'assets/img/no_results_dark.svg'
        : 'assets/img/no_results_light.svg';
  }

  static String networkError(BuildContext context) {
    final isDark = context.isDark;
    return isDark
        ? 'assets/img/no_connection_error_dark.svg'
        : 'assets/img/no_connection_error_light.svg';
  }
}

/// Firestore collections
class FirestoreCollection {
  static const String recentPlaces = 'recent_places';
  static const String places = 'places';
  static const String newPlaces = 'new_places';
  static const String reviews = 'reviews';
  static const String reviewsItems = 'reviews_items';
  static const String bussines = 'business_test';
  static const String about = 'about';
  static const String favorites = 'favorites';
  static const String userFavorites = 'user_favorites';
  static const String services = 'sections';
}

class FirebaseStorageFolders {
  static const String reviews = 'reviews';
}

/// Pagination configuration
class Pagination {
  static const int defaultPageSize = 10;
  static const int defaultPage = 0;
}

class ApiConstants {
  static const String addReview =
      'https://handler-new-review-z44rc4gexa-uc.a.run.app/';

  static const String updateReviews =
      'https://handler-update-review-z44rc4gexa-uc.a.run.app';
}

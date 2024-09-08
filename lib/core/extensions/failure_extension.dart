import 'package:fin_dall/core/error/api_failure.dart';
import 'package:fin_dall/core/error/failure.dart';
import 'package:fin_dall/core/error/general_failure.dart';
import 'package:fin_dall/core/error/json_serialization_failure.dart';
import 'package:fin_dall/core/error/launcher_failure.dart';
import 'package:fin_dall/core/error/location_failure.dart';
import 'package:fin_dall/core/error/share_failure.dart';
import 'package:fin_dall/core/error/storage_failure.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

extension FailureMessage on Failure {
  String getUIMessage({required BuildContext context}) {
    switch (this) {
      case LauncherFailure():
        switch (this as LauncherFailure) {
          case CouldNotLaunchPhoneFailure():
            return context.loc.couldNotLaunchPhoneFailure;
          case CouldNotLaunchEmailFailure():
            return context.loc.couldNotLaunchEmailFailure;
          case CouldNotLaunchUrlFailure():
            return context.loc.couldNotLaunchUrlFailure;
          case CouldNotLaunchWhatsAppFailure():
            return context.loc.couldNotLaunchWhatsAppFailure;
          case CouldNotLaunchTelegramFailure():
            return context.loc.couldNotLaunchTelegramFailure;
          default:
            return context.loc.unknownFailure;
        }
      case CouldNotShareFailure():
        return context.loc.couldNotShareFailure;
      case JsonSerializationFailure():
        return context.loc.internalFailure;
      case StorageFailure():
        return context.loc.internalFailure;

      case LocationFailure():
        switch (this as LocationFailure) {
          case NoLocationPermissionFailure():
            return context.loc.noLocationPermissionFailure;
          case NoServiceEnabledFailure():
            return context.loc.noServiceEnabledFailure;
          case NoAddressFoundFailure():
            return context.loc.noAddressFoundFailure;
          default:
            return context.loc.unknownFailure;
        }

      case GeneralFailure():
        switch (this as GeneralFailure) {
          case UnknownFailure():
            return context.loc.unknownFailure;
          default:
            return context.loc.unknownFailure;
        }

      case ApiFailure():
        switch (this as ApiFailure) {
          case UnknownApiFailure():
            return context.loc.unknownFailure;
          case UnauthorizedFailure():
            return context.loc.unauthorizedFailure;
          case ForbiddenFailure():
            return context.loc.forbiddenFailure;
          case NotFoundFailure():
            return context.loc.notFoundFailure;

          case RequestTimeoutFailure():
            return context.loc.noInternetFailure;

          case InternalServerErrorFailure():
            return context.loc.internalServerErrorFailure;
          case InvalidCrendentialsFailure():
            return context.loc.invalidCredentialsFailure;
          case EmailAlreadyExistsFailure():
            return context.loc.emailInUseFailure;
          case InvalidActivationCode():
            return context.loc.invalidActivationCodeFailure;

          default:
            return context.loc.unknownFailure;
        }
      default:
        return context.loc.unknownFailure;
    }
  }
}

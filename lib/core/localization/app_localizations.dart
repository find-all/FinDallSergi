import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of S
/// returned by `S.of(context)`.
///
/// Applications need to include `S.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: S.localizationsDelegates,
///   supportedLocales: S.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the S.supportedLocales
/// property.
abstract class S {
  S(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static S? of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  static const LocalizationsDelegate<S> delegate = _SDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('es'),
    Locale('en')
  ];

  /// No description provided for @appName.
  ///
  /// In es, this message translates to:
  /// **'Find All'**
  String get appName;

  /// No description provided for @ok.
  ///
  /// In es, this message translates to:
  /// **'Ok'**
  String get ok;

  /// No description provided for @cancel.
  ///
  /// In es, this message translates to:
  /// **'Cancelar'**
  String get cancel;

  /// No description provided for @accept.
  ///
  /// In es, this message translates to:
  /// **'Aceptar'**
  String get accept;

  /// No description provided for @retry.
  ///
  /// In es, this message translates to:
  /// **'Reintentar'**
  String get retry;

  /// No description provided for @or.
  ///
  /// In es, this message translates to:
  /// **'o'**
  String get or;

  /// No description provided for @back.
  ///
  /// In es, this message translates to:
  /// **'Volver'**
  String get back;

  /// No description provided for @unknowError.
  ///
  /// In es, this message translates to:
  /// **'Se ha producido un error desconocido. Por favor, inténtelo de nuevo más tarde.'**
  String get unknowError;

  /// No description provided for @send.
  ///
  /// In es, this message translates to:
  /// **'Enviar'**
  String get send;

  /// No description provided for @resend.
  ///
  /// In es, this message translates to:
  /// **'Reenviar'**
  String get resend;

  /// No description provided for @update.
  ///
  /// In es, this message translates to:
  /// **'Actualizar'**
  String get update;

  /// No description provided for @seeMore.
  ///
  /// In es, this message translates to:
  /// **'Ver más'**
  String get seeMore;

  /// No description provided for @close.
  ///
  /// In es, this message translates to:
  /// **'Cerrar'**
  String get close;

  /// No description provided for @ofT.
  ///
  /// In es, this message translates to:
  /// **'de'**
  String get ofT;

  /// No description provided for @noResults.
  ///
  /// In es, this message translates to:
  /// **'No hay resultados para mostrar.'**
  String get noResults;

  /// No description provided for @addImage.
  ///
  /// In es, this message translates to:
  /// **'Añadir imagen'**
  String get addImage;

  /// No description provided for @anonymousAuthor.
  ///
  /// In es, this message translates to:
  /// **'Anónimo'**
  String get anonymousAuthor;

  /// No description provided for @unknown.
  ///
  /// In es, this message translates to:
  /// **'Desconocido'**
  String get unknown;

  /// No description provided for @clear.
  ///
  /// In es, this message translates to:
  /// **'Limpiar'**
  String get clear;

  /// No description provided for @showAll.
  ///
  /// In es, this message translates to:
  /// **'Mostrar todo'**
  String get showAll;

  /// No description provided for @actualImages.
  ///
  /// In es, this message translates to:
  /// **'Imágenes actuales'**
  String get actualImages;

  /// No description provided for @search.
  ///
  /// In es, this message translates to:
  /// **'Buscar'**
  String get search;

  /// No description provided for @noSearchResults.
  ///
  /// In es, this message translates to:
  /// **'No hay resultados para mostrar. Inténtelo de nuevo con otros términos de búsqueda.'**
  String get noSearchResults;

  /// No description provided for @searchMore.
  ///
  /// In es, this message translates to:
  /// **'Buscar más'**
  String get searchMore;

  /// No description provided for @services.
  ///
  /// In es, this message translates to:
  /// **'Servicios'**
  String get services;

  /// No description provided for @features.
  ///
  /// In es, this message translates to:
  /// **'Características'**
  String get features;

  /// No description provided for @images.
  ///
  /// In es, this message translates to:
  /// **'Imágenes'**
  String get images;

  /// No description provided for @price.
  ///
  /// In es, this message translates to:
  /// **'Precio'**
  String get price;

  /// No description provided for @microphonePermissionDenied.
  ///
  /// In es, this message translates to:
  /// **'No se puede acceder al micrófono. Por favor, compruebe los permisos de la aplicación.'**
  String get microphonePermissionDenied;

  /// No description provided for @typeMessage.
  ///
  /// In es, this message translates to:
  /// **'Escribe un mensaje...'**
  String get typeMessage;

  /// No description provided for @buy.
  ///
  /// In es, this message translates to:
  /// **'Comprar'**
  String get buy;

  /// No description provided for @showProduct.
  ///
  /// In es, this message translates to:
  /// **'Ver producto'**
  String get showProduct;

  /// Shipment price
  ///
  /// In es, this message translates to:
  /// **'Precio de envío {price}'**
  String shipmentPrice(Object price);

  /// No description provided for @slideToSeeMore.
  ///
  /// In es, this message translates to:
  /// **'Desliza para ver más'**
  String get slideToSeeMore;

  /// No description provided for @categories.
  ///
  /// In es, this message translates to:
  /// **'Categorías'**
  String get categories;

  /// No description provided for @filters.
  ///
  /// In es, this message translates to:
  /// **'Filtros'**
  String get filters;

  /// No description provided for @searchHint.
  ///
  /// In es, this message translates to:
  /// **'Buscar...'**
  String get searchHint;

  /// No description provided for @showMoreProducts.
  ///
  /// In es, this message translates to:
  /// **'Ver más productos'**
  String get showMoreProducts;

  /// No description provided for @preferences.
  ///
  /// In es, this message translates to:
  /// **'Para ti'**
  String get preferences;

  /// No description provided for @around.
  ///
  /// In es, this message translates to:
  /// **'Cerca de ti'**
  String get around;

  /// No description provided for @parameters.
  ///
  /// In es, this message translates to:
  /// **'Parámetros'**
  String get parameters;

  /// No description provided for @verificationEmailSent.
  ///
  /// In es, this message translates to:
  /// **'Se ha enviado un email de verificación a su dirección de correo electrónico. Por favor, siga las instrucciones para completar el proceso.'**
  String get verificationEmailSent;

  /// No description provided for @enterVerificationCode.
  ///
  /// In es, this message translates to:
  /// **'Introduce el código de verificación enviado a tu correo electrónico.'**
  String get enterVerificationCode;

  /// No description provided for @resendVerificationCode.
  ///
  /// In es, this message translates to:
  /// **'Reenviar código de verificación'**
  String get resendVerificationCode;

  /// No description provided for @oppsSomethingWentWrong.
  ///
  /// In es, this message translates to:
  /// **'¡Vaya! Algo salió mal.'**
  String get oppsSomethingWentWrong;

  /// No description provided for @passwordRequiredForThisAction.
  ///
  /// In es, this message translates to:
  /// **'Para completar esta acción es necesario introducir la contraseña actual por motivos de seguridad.'**
  String get passwordRequiredForThisAction;

  /// No description provided for @newEmailMustBeDifferent.
  ///
  /// In es, this message translates to:
  /// **'El nuevo email debe ser diferente al actual.'**
  String get newEmailMustBeDifferent;

  /// No description provided for @newNameMustBeDifferent.
  ///
  /// In es, this message translates to:
  /// **'El nuevo nombre debe ser diferente al actual.'**
  String get newNameMustBeDifferent;

  /// No description provided for @newEmail.
  ///
  /// In es, this message translates to:
  /// **'Nuevo email'**
  String get newEmail;

  /// No description provided for @newName.
  ///
  /// In es, this message translates to:
  /// **'Nuevo nombre'**
  String get newName;

  /// No description provided for @newPasswordMustBeDifferent.
  ///
  /// In es, this message translates to:
  /// **'La nueva contraseña debe ser diferente a la actual.'**
  String get newPasswordMustBeDifferent;

  /// No description provided for @confirmNewPasswordMustBeEqual.
  ///
  /// In es, this message translates to:
  /// **'La confirmación de la nueva contraseña debe ser igual a la nueva contraseña.'**
  String get confirmNewPasswordMustBeEqual;

  /// No description provided for @searchForFavorites.
  ///
  /// In es, this message translates to:
  /// **'Buscar en favoritos'**
  String get searchForFavorites;

  /// No description provided for @required.
  ///
  /// In es, this message translates to:
  /// **'Este campo es requerido'**
  String get required;

  /// Min length validator
  ///
  /// In es, this message translates to:
  /// **'Este campo debe tener al menos {min} caracteres'**
  String minLength(Object min);

  /// Max length validator
  ///
  /// In es, this message translates to:
  /// **'Este campo debe tener como máximo {max} caracteres'**
  String maxLength(Object max);

  /// No description provided for @emailValidation.
  ///
  /// In es, this message translates to:
  /// **'Este campo debe ser un email válido'**
  String get emailValidation;

  /// No description provided for @mustNotMatch.
  ///
  /// In es, this message translates to:
  /// **'Este campo no puede coincidir con el campo anterior'**
  String get mustNotMatch;

  /// No description provided for @mustMatch.
  ///
  /// In es, this message translates to:
  /// **'Este campo debe coincidir con el campo anterior'**
  String get mustMatch;

  /// No description provided for @passwordValidation.
  ///
  /// In es, this message translates to:
  /// **'Debe tener al menos una letra mayúscula, una minúscula y un número'**
  String get passwordValidation;

  /// No description provided for @codeOnlyNumbers.
  ///
  /// In es, this message translates to:
  /// **'El código solo puede contener números'**
  String get codeOnlyNumbers;

  /// No description provided for @noInternetConnection.
  ///
  /// In es, this message translates to:
  /// **'No hay conexión a internet. Por favor, compruebe su conexión e inténtelo de nuevo.'**
  String get noInternetConnection;

  /// No description provided for @internalError.
  ///
  /// In es, this message translates to:
  /// **'Se ha producido un error interno. Por favor, inténtelo de nuevo más tarde.'**
  String get internalError;

  /// No description provided for @locationPermissionDeniedTitle.
  ///
  /// In es, this message translates to:
  /// **'Permisos de la aplicación'**
  String get locationPermissionDeniedTitle;

  /// No description provided for @locationPermissionDeniedMessage.
  ///
  /// In es, this message translates to:
  /// **'No se puede acceder a la ubicación. Por favor, compruebe los permisos de la aplicación.'**
  String get locationPermissionDeniedMessage;

  /// No description provided for @openSettings.
  ///
  /// In es, this message translates to:
  /// **'Abrir ajustes'**
  String get openSettings;

  /// No description provided for @locationServiceDisabledTitle.
  ///
  /// In es, this message translates to:
  /// **'Servicio de ubicación'**
  String get locationServiceDisabledTitle;

  /// No description provided for @locationServiceDisabledMessage.
  ///
  /// In es, this message translates to:
  /// **'No se puede acceder a la ubicación. Por favor, compruebe que el servicio de ubicación está activado.'**
  String get locationServiceDisabledMessage;

  /// No description provided for @errorLocationPermissionDeniedForever.
  ///
  /// In es, this message translates to:
  /// **'No se puede acceder a la ubicación. Por favor, compruebe los permisos de la aplicación.'**
  String get errorLocationPermissionDeniedForever;

  /// No description provided for @errorLocationPermissionDenied.
  ///
  /// In es, this message translates to:
  /// **'No se puede acceder a la ubicación. Por favor, compruebe los permisos de la aplicación.'**
  String get errorLocationPermissionDenied;

  /// No description provided for @errorLocationServiceDisabled.
  ///
  /// In es, this message translates to:
  /// **'No se puede acceder a la ubicación. Por favor, compruebe que el servicio de ubicación está activado.'**
  String get errorLocationServiceDisabled;

  /// No description provided for @errorLocationUnknow.
  ///
  /// In es, this message translates to:
  /// **'No se puede acceder a la ubicación. Por favor, compruebe los permisos de la aplicación y que el servicio de ubicación está activado.'**
  String get errorLocationUnknow;

  /// No description provided for @errorAdressNotFound.
  ///
  /// In es, this message translates to:
  /// **'No se ha encontrado la dirección para la ubicación seleccionada.'**
  String get errorAdressNotFound;

  /// No description provided for @errorLocationFromAddress.
  ///
  /// In es, this message translates to:
  /// **'No se ha encontrado la ubicación para la dirección seleccionada.'**
  String get errorLocationFromAddress;

  /// No description provided for @selectImage.
  ///
  /// In es, this message translates to:
  /// **'Selecciona una imagen'**
  String get selectImage;

  /// No description provided for @selectImageSource.
  ///
  /// In es, this message translates to:
  /// **'Selecciona una fuente de imagen'**
  String get selectImageSource;

  /// No description provided for @selectFromCamera.
  ///
  /// In es, this message translates to:
  /// **'Cámara'**
  String get selectFromCamera;

  /// No description provided for @selectFromGallery.
  ///
  /// In es, this message translates to:
  /// **'Galería'**
  String get selectFromGallery;

  /// No description provided for @deleteImageDialogTitle.
  ///
  /// In es, this message translates to:
  /// **'Eliminar imagen'**
  String get deleteImageDialogTitle;

  /// No description provided for @deleteImageDialogMessage.
  ///
  /// In es, this message translates to:
  /// **'¿Está seguro de que desea eliminar la imagen?'**
  String get deleteImageDialogMessage;

  /// No description provided for @permissionDialogTitle.
  ///
  /// In es, this message translates to:
  /// **'Permisos de la aplicación'**
  String get permissionDialogTitle;

  /// No description provided for @cameraPermissionDenied.
  ///
  /// In es, this message translates to:
  /// **'No se puede acceder a la cámara. Por favor, compruebe los permisos de la aplicación.'**
  String get cameraPermissionDenied;

  /// No description provided for @galleryPermissionDenied.
  ///
  /// In es, this message translates to:
  /// **'No se puede acceder a la galería. Por favor, compruebe los permisos de la aplicación.'**
  String get galleryPermissionDenied;

  /// No description provided for @signIn.
  ///
  /// In es, this message translates to:
  /// **'Inicio de sesión'**
  String get signIn;

  /// No description provided for @signInMessage.
  ///
  /// In es, this message translates to:
  /// **'Bienvenido de nuevo!'**
  String get signInMessage;

  /// No description provided for @backToSignIn.
  ///
  /// In es, this message translates to:
  /// **'Volver al inicio de sesión'**
  String get backToSignIn;

  /// No description provided for @signUp.
  ///
  /// In es, this message translates to:
  /// **'Registro'**
  String get signUp;

  /// No description provided for @signUpMessage.
  ///
  /// In es, this message translates to:
  /// **'Bienvenido!'**
  String get signUpMessage;

  /// No description provided for @signOut.
  ///
  /// In es, this message translates to:
  /// **'Cerrar sesión'**
  String get signOut;

  /// No description provided for @email.
  ///
  /// In es, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @emailHint.
  ///
  /// In es, this message translates to:
  /// **'Introduce tu email'**
  String get emailHint;

  /// No description provided for @password.
  ///
  /// In es, this message translates to:
  /// **'Contraseña'**
  String get password;

  /// No description provided for @passwordHint.
  ///
  /// In es, this message translates to:
  /// **'Introduce tu contraseña'**
  String get passwordHint;

  /// No description provided for @forgetPassword.
  ///
  /// In es, this message translates to:
  /// **'¿Olvidaste tu contraseña?'**
  String get forgetPassword;

  /// No description provided for @forgetPasswordMessage.
  ///
  /// In es, this message translates to:
  /// **'Introduce tu email y te enviaremos un enlace para restablecer tu contraseña.'**
  String get forgetPasswordMessage;

  /// No description provided for @forgetPasswordSuccess.
  ///
  /// In es, this message translates to:
  /// **'Se ha enviado un enlace a su correo electrónico para restablecer su contraseña.'**
  String get forgetPasswordSuccess;

  /// No description provided for @verificationEmailMessage.
  ///
  /// In es, this message translates to:
  /// **'Se ha enviado un email a su cuenta de correo con un enlace para verificar su email. Una vez completado el proceso, vuelva a iniciar sesión. Si no recibe el correo electrónico, pulse el botón de abajo para volver a enviarlo.'**
  String get verificationEmailMessage;

  /// No description provided for @sendVerificationEmailSuccess.
  ///
  /// In es, this message translates to:
  /// **'Se ha enviado un correo electrónico de verificación a su dirección de correo electrónico.'**
  String get sendVerificationEmailSuccess;

  /// No description provided for @dontHaveAccount.
  ///
  /// In es, this message translates to:
  /// **'¿No tienes una cuenta? Registrate'**
  String get dontHaveAccount;

  /// No description provided for @name.
  ///
  /// In es, this message translates to:
  /// **'Nombre'**
  String get name;

  /// No description provided for @nameHint.
  ///
  /// In es, this message translates to:
  /// **'Introduce tu nombre'**
  String get nameHint;

  /// No description provided for @signInWithSocial.
  ///
  /// In es, this message translates to:
  /// **'O inicia sesión con tus redes sociales'**
  String get signInWithSocial;

  /// No description provided for @signUpWithSocial.
  ///
  /// In es, this message translates to:
  /// **'O registrate con tus redes sociales'**
  String get signUpWithSocial;

  /// No description provided for @signInWithGoogle.
  ///
  /// In es, this message translates to:
  /// **'Inicia sesión con Google'**
  String get signInWithGoogle;

  /// No description provided for @signInWithApple.
  ///
  /// In es, this message translates to:
  /// **'Inicia sesión con Apple'**
  String get signInWithApple;

  /// No description provided for @signUpWithGoogle.
  ///
  /// In es, this message translates to:
  /// **'Registrate con Google'**
  String get signUpWithGoogle;

  /// No description provided for @signUpWithApple.
  ///
  /// In es, this message translates to:
  /// **'Registrate con Apple'**
  String get signUpWithApple;

  /// No description provided for @errorEmailAlreadyInUse.
  ///
  /// In es, this message translates to:
  /// **'La dirección de correo electrónico ya está siendo utilizada por otra cuenta.'**
  String get errorEmailAlreadyInUse;

  /// No description provided for @errorWrongPassword.
  ///
  /// In es, this message translates to:
  /// **'La contraseña actual no es válida.'**
  String get errorWrongPassword;

  /// No description provided for @errorWeakPassword.
  ///
  /// In es, this message translates to:
  /// **'La contraseña debe tener al menos 6 caracteres.'**
  String get errorWeakPassword;

  /// No description provided for @errorUserNotFound.
  ///
  /// In es, this message translates to:
  /// **'No hay ningún registro de usuario que corresponda a este identificador. El usuario puede haber sido eliminado.'**
  String get errorUserNotFound;

  /// No description provided for @errorInvalidEmail.
  ///
  /// In es, this message translates to:
  /// **'La dirección de correo electrónico no es válida.'**
  String get errorInvalidEmail;

  /// No description provided for @errorUserDisabled.
  ///
  /// In es, this message translates to:
  /// **'La cuenta de usuario ha sido deshabilitada por un administrador.'**
  String get errorUserDisabled;

  /// No description provided for @errorUserCancelled.
  ///
  /// In es, this message translates to:
  /// **'La cuenta de usuario ha sido cancelada.'**
  String get errorUserCancelled;

  /// No description provided for @errorEmailUnverified.
  ///
  /// In es, this message translates to:
  /// **'La dirección de correo electrónico del usuario no ha sido verificada.'**
  String get errorEmailUnverified;

  /// No description provided for @errorInvalidCredentials.
  ///
  /// In es, this message translates to:
  /// **'El usuario o la contraseña son incorrectos.'**
  String get errorInvalidCredentials;

  /// No description provided for @errorAccountExistsWithDifferentCredential.
  ///
  /// In es, this message translates to:
  /// **'Ya existe una cuenta con la misma dirección de correo electrónico pero con credenciales de inicio de sesión diferentes. Inicie sesión utilizando una proveedor asociado a esta dirección de correo electrónico.'**
  String get errorAccountExistsWithDifferentCredential;

  /// No description provided for @errorInvalidName.
  ///
  /// In es, this message translates to:
  /// **'El nombre no es válido. Debe tener al menos 3 caracteres.'**
  String get errorInvalidName;

  /// No description provided for @errorTooManyRequests.
  ///
  /// In es, this message translates to:
  /// **'Demasiadas solicitudes. Inténtelo de nuevo más tarde.'**
  String get errorTooManyRequests;

  /// No description provided for @errorAuthUnknow.
  ///
  /// In es, this message translates to:
  /// **'Se ha producido un error desconocido. Por favor, inténtelo de nuevo más tarde.'**
  String get errorAuthUnknow;

  /// No description provided for @errorUnauthenticated.
  ///
  /// In es, this message translates to:
  /// **'El usuario actual no está autenticado. Inicie sesión para continuar.'**
  String get errorUnauthenticated;

  /// No description provided for @errorInvalidAuthProvider.
  ///
  /// In es, this message translates to:
  /// **'Es procedimiento no se puede realizar con el provvedor de autenticación proporcionado.'**
  String get errorInvalidAuthProvider;

  /// No description provided for @account.
  ///
  /// In es, this message translates to:
  /// **'Cuenta'**
  String get account;

  /// No description provided for @profile.
  ///
  /// In es, this message translates to:
  /// **'Perfil'**
  String get profile;

  /// No description provided for @oldPassword.
  ///
  /// In es, this message translates to:
  /// **'Contraseña actual'**
  String get oldPassword;

  /// No description provided for @oldPasswordHint.
  ///
  /// In es, this message translates to:
  /// **'Introduce tu contraseña actual'**
  String get oldPasswordHint;

  /// No description provided for @newPassword.
  ///
  /// In es, this message translates to:
  /// **'Nueva contraseña'**
  String get newPassword;

  /// No description provided for @newPasswordHint.
  ///
  /// In es, this message translates to:
  /// **'Introduce tu nueva contraseña'**
  String get newPasswordHint;

  /// No description provided for @confirmNewPassword.
  ///
  /// In es, this message translates to:
  /// **'Confirmar nueva contraseña'**
  String get confirmNewPassword;

  /// No description provided for @confirmNewPasswordHint.
  ///
  /// In es, this message translates to:
  /// **'Introduce de nuevo tu nueva contraseña'**
  String get confirmNewPasswordHint;

  /// No description provided for @errorCouldNotUpdatePassword.
  ///
  /// In es, this message translates to:
  /// **'No se ha podido actualizar la contraseña. Por favor, inténtelo de nuevo más tarde.'**
  String get errorCouldNotUpdatePassword;

  /// No description provided for @changePasswordSuccess.
  ///
  /// In es, this message translates to:
  /// **'La contraseña se ha actualizado correctamente.'**
  String get changePasswordSuccess;

  /// No description provided for @changeNameSuccess.
  ///
  /// In es, this message translates to:
  /// **'El nombre se ha actualizado correctamente.'**
  String get changeNameSuccess;

  /// No description provided for @changeEmailSuccess.
  ///
  /// In es, this message translates to:
  /// **'El email se ha actualizado correctamente.'**
  String get changeEmailSuccess;

  /// No description provided for @changeProfileImageSuccess.
  ///
  /// In es, this message translates to:
  /// **'La imagen de perfil se ha actualizado correctamente.'**
  String get changeProfileImageSuccess;

  /// No description provided for @imageProfileUpdated.
  ///
  /// In es, this message translates to:
  /// **'La imagen de perfil se ha actualizado correctamente.'**
  String get imageProfileUpdated;

  /// No description provided for @changeRequirePassword.
  ///
  /// In es, this message translates to:
  /// **'Para completar el proceso de cambio es necesario introducir la contraseña actual para verificar su identidad.'**
  String get changeRequirePassword;

  /// No description provided for @changePasswordDescription.
  ///
  /// In es, this message translates to:
  /// **'Complete el siguiente formulario para cambiar su contraseña.'**
  String get changePasswordDescription;

  /// No description provided for @changeNameDescription.
  ///
  /// In es, this message translates to:
  /// **'Complete el siguiente formulario para cambiar su nombre.'**
  String get changeNameDescription;

  /// No description provided for @changeEmailDescription.
  ///
  /// In es, this message translates to:
  /// **'Complete el siguiente formulario para cambiar su email.'**
  String get changeEmailDescription;

  /// No description provided for @changeProfileImageDescription.
  ///
  /// In es, this message translates to:
  /// **'Presione el botón de actualizar para cambiar su imagen de perfil.'**
  String get changeProfileImageDescription;

  /// No description provided for @changeNameTitle.
  ///
  /// In es, this message translates to:
  /// **'Cambiar nombre'**
  String get changeNameTitle;

  /// No description provided for @changeEmailTitle.
  ///
  /// In es, this message translates to:
  /// **'Cambiar email'**
  String get changeEmailTitle;

  /// No description provided for @changeProfileImageTitle.
  ///
  /// In es, this message translates to:
  /// **'Cambiar imagen de perfil'**
  String get changeProfileImageTitle;

  /// No description provided for @changePasswordTitle.
  ///
  /// In es, this message translates to:
  /// **'Cambiar contraseña'**
  String get changePasswordTitle;

  /// No description provided for @deleteAccount.
  ///
  /// In es, this message translates to:
  /// **'Eliminar cuenta'**
  String get deleteAccount;

  /// No description provided for @deleteAccountDescription.
  ///
  /// In es, this message translates to:
  /// **'¿Está seguro de que desea eliminar su cuenta? Esta acción no se puede deshacer. Si el proceso se completa con éxito, se le redirigirá a la pantalla de inicio de sesión. Si desea continuar, introduzca su contraseña actual para verificar su identidad.'**
  String get deleteAccountDescription;

  /// No description provided for @deleteAccountShortDescription.
  ///
  /// In es, this message translates to:
  /// **'Inicia el proceso de eliminación de la cuenta. Esta acción no se puede deshacer.'**
  String get deleteAccountShortDescription;

  /// No description provided for @deleteAccountPassword.
  ///
  /// In es, this message translates to:
  /// **'Para completar el proceso de eliminación es necesario introducir la contraseña actual para verificar su identidad.'**
  String get deleteAccountPassword;

  /// No description provided for @errorRequiresRecentLogin.
  ///
  /// In es, this message translates to:
  /// **'Esta operación es sensible y requiere una autenticación reciente. Inicie sesión de nuevo antes de volver a intentar esta solicitud.'**
  String get errorRequiresRecentLogin;

  /// No description provided for @errorUploadImage.
  ///
  /// In es, this message translates to:
  /// **'Se ha producido un error al subir la imagen. Por favor, inténtelo de nuevo más tarde.'**
  String get errorUploadImage;

  /// No description provided for @errorSameEmail.
  ///
  /// In es, this message translates to:
  /// **'El email introducido es el mismo que el actual.'**
  String get errorSameEmail;

  /// No description provided for @actualProfileImage.
  ///
  /// In es, this message translates to:
  /// **'Imagen de perfil actual'**
  String get actualProfileImage;

  /// No description provided for @newProfileImage.
  ///
  /// In es, this message translates to:
  /// **'Nueva imagen de perfil'**
  String get newProfileImage;

  /// No description provided for @settings.
  ///
  /// In es, this message translates to:
  /// **'Ajustes'**
  String get settings;

  /// No description provided for @spanish.
  ///
  /// In es, this message translates to:
  /// **'Español'**
  String get spanish;

  /// No description provided for @english.
  ///
  /// In es, this message translates to:
  /// **'Inglés'**
  String get english;

  /// No description provided for @languageChangeError.
  ///
  /// In es, this message translates to:
  /// **'Se ha producido un error al cambiar el idioma. Por favor, inténtelo de nuevo más tarde.'**
  String get languageChangeError;

  /// No description provided for @lightMode.
  ///
  /// In es, this message translates to:
  /// **'Mode claro'**
  String get lightMode;

  /// No description provided for @darkMode.
  ///
  /// In es, this message translates to:
  /// **'Mode oscuro'**
  String get darkMode;

  /// No description provided for @systemMode.
  ///
  /// In es, this message translates to:
  /// **'Mode del sistema'**
  String get systemMode;

  /// No description provided for @themeChangeError.
  ///
  /// In es, this message translates to:
  /// **'Se ha producido un error al cambiar el tema. Por favor, inténtelo de nuevo más tarde.'**
  String get themeChangeError;

  /// No description provided for @help.
  ///
  /// In es, this message translates to:
  /// **'Ayuda'**
  String get help;

  /// No description provided for @myReviews.
  ///
  /// In es, this message translates to:
  /// **'Mis reseñas'**
  String get myReviews;

  /// No description provided for @noReviewsYet.
  ///
  /// In es, this message translates to:
  /// **'No hay reseñas todavía. ¿Por qué no escribes una pulsando el botón + ?'**
  String get noReviewsYet;

  /// No description provided for @dontFindPlace.
  ///
  /// In es, this message translates to:
  /// **'¿No encuentras el lugar que buscas?'**
  String get dontFindPlace;

  /// No description provided for @dontFindPlaceDescription.
  ///
  /// In es, this message translates to:
  /// **'Puedes añadir un nuevo lugar para que nuestro equipo lo revise y lo publique en la aplicación.'**
  String get dontFindPlaceDescription;

  /// No description provided for @addPlace.
  ///
  /// In es, this message translates to:
  /// **'Añadir lugar'**
  String get addPlace;

  /// No description provided for @addPlaceDescription.
  ///
  /// In es, this message translates to:
  /// **'Complete el siguiente formulario para añadir un nuevo lugar. Nuestro equipo revisará la información y la publicará en la aplicación.'**
  String get addPlaceDescription;

  /// No description provided for @addPlaceSuccess.
  ///
  /// In es, this message translates to:
  /// **'El lugar se ha añadido correctamente. Nuestro equipo revisará la información y la publicará en la aplicación.'**
  String get addPlaceSuccess;

  /// No description provided for @placeName.
  ///
  /// In es, this message translates to:
  /// **'Nombre del lugar'**
  String get placeName;

  /// No description provided for @placeNameHint.
  ///
  /// In es, this message translates to:
  /// **'Introduce el nombre del lugar'**
  String get placeNameHint;

  /// No description provided for @placeAddress.
  ///
  /// In es, this message translates to:
  /// **'Dirección del lugar'**
  String get placeAddress;

  /// No description provided for @placeAddressHint.
  ///
  /// In es, this message translates to:
  /// **'Selecciona la dirección del lugar'**
  String get placeAddressHint;

  /// Selected address
  ///
  /// In es, this message translates to:
  /// **'Dirección seleccionada: {place}'**
  String selectedAddress(Object place, Object address);

  /// No description provided for @placeUrl.
  ///
  /// In es, this message translates to:
  /// **'URL del negocio'**
  String get placeUrl;

  /// No description provided for @placeUrlHint.
  ///
  /// In es, this message translates to:
  /// **'Introduce la URL del negocio'**
  String get placeUrlHint;

  /// No description provided for @searchPlace.
  ///
  /// In es, this message translates to:
  /// **'Buscar lugar'**
  String get searchPlace;

  /// No description provided for @searchPlaceHint.
  ///
  /// In es, this message translates to:
  /// **'Introduce el nombre del lugar'**
  String get searchPlaceHint;

  /// No description provided for @selectAddress.
  ///
  /// In es, this message translates to:
  /// **'Seleccionar dirección'**
  String get selectAddress;

  /// No description provided for @wirteAReview.
  ///
  /// In es, this message translates to:
  /// **'Escribe una reseña'**
  String get wirteAReview;

  /// No description provided for @recentViewed.
  ///
  /// In es, this message translates to:
  /// **'Visto recientemente'**
  String get recentViewed;

  /// No description provided for @recentViewedEmpty.
  ///
  /// In es, this message translates to:
  /// **'No hay lugares vistos recientemente.'**
  String get recentViewedEmpty;

  /// No description provided for @history.
  ///
  /// In es, this message translates to:
  /// **'Historial'**
  String get history;

  /// No description provided for @historyEmpty.
  ///
  /// In es, this message translates to:
  /// **'No hay lugares recientes en el historial.'**
  String get historyEmpty;

  /// No description provided for @historyClear.
  ///
  /// In es, this message translates to:
  /// **'Limpiar historial'**
  String get historyClear;

  /// No description provided for @historyClearDescription.
  ///
  /// In es, this message translates to:
  /// **'¿Está seguro de que desea limpiar el historial?'**
  String get historyClearDescription;

  /// No description provided for @historyClearSuccess.
  ///
  /// In es, this message translates to:
  /// **'El historial se ha limpiado correctamente.'**
  String get historyClearSuccess;

  /// Total reviews
  ///
  /// In es, this message translates to:
  /// **'{number} reseñas'**
  String totalReviews(Object number);

  /// No description provided for @noComments.
  ///
  /// In es, this message translates to:
  /// **'No hay comentarios'**
  String get noComments;

  /// No description provided for @comments.
  ///
  /// In es, this message translates to:
  /// **'Comentarios'**
  String get comments;

  /// No description provided for @publishReview.
  ///
  /// In es, this message translates to:
  /// **'Publicar reseña'**
  String get publishReview;

  /// No description provided for @reviewPublished.
  ///
  /// In es, this message translates to:
  /// **'La reseña se ha publicado correctamente.'**
  String get reviewPublished;

  /// No description provided for @reviewUpdated.
  ///
  /// In es, this message translates to:
  /// **'La reseña se ha actualizado correctamente.'**
  String get reviewUpdated;

  /// No description provided for @newReview.
  ///
  /// In es, this message translates to:
  /// **'Nueva reseña'**
  String get newReview;

  /// No description provided for @reviewRating.
  ///
  /// In es, this message translates to:
  /// **'Valoración'**
  String get reviewRating;

  /// No description provided for @excellet.
  ///
  /// In es, this message translates to:
  /// **'Excelente'**
  String get excellet;

  /// No description provided for @veryGood.
  ///
  /// In es, this message translates to:
  /// **'Muy buena'**
  String get veryGood;

  /// No description provided for @normal.
  ///
  /// In es, this message translates to:
  /// **'Normal'**
  String get normal;

  /// No description provided for @bad.
  ///
  /// In es, this message translates to:
  /// **'Malo'**
  String get bad;

  /// No description provided for @veryBad.
  ///
  /// In es, this message translates to:
  /// **'Pésimo'**
  String get veryBad;

  /// No description provided for @reviewsResume.
  ///
  /// In es, this message translates to:
  /// **'Resumen de reseñas'**
  String get reviewsResume;

  /// No description provided for @positivePoints.
  ///
  /// In es, this message translates to:
  /// **'Puntos descatables'**
  String get positivePoints;

  /// No description provided for @negativePoints.
  ///
  /// In es, this message translates to:
  /// **'Puntos débiles'**
  String get negativePoints;

  /// No description provided for @detailReviews.
  ///
  /// In es, this message translates to:
  /// **'Reseñas detalladas'**
  String get detailReviews;

  /// No description provided for @noContentAvailable.
  ///
  /// In es, this message translates to:
  /// **'No hay contenido disponible'**
  String get noContentAvailable;

  /// No description provided for @reviews.
  ///
  /// In es, this message translates to:
  /// **'Reseñas'**
  String get reviews;

  /// No description provided for @seeReviews.
  ///
  /// In es, this message translates to:
  /// **'Ver reseñas'**
  String get seeReviews;

  /// No description provided for @seeBusiness.
  ///
  /// In es, this message translates to:
  /// **'Ver negocio'**
  String get seeBusiness;

  /// No description provided for @seeService.
  ///
  /// In es, this message translates to:
  /// **'Ver servicio'**
  String get seeService;

  /// No description provided for @seeProduct.
  ///
  /// In es, this message translates to:
  /// **'Ver producto'**
  String get seeProduct;

  /// No description provided for @reviewing.
  ///
  /// In es, this message translates to:
  /// **'Pendiente de revisión'**
  String get reviewing;

  /// No description provided for @bussines.
  ///
  /// In es, this message translates to:
  /// **'Negocio'**
  String get bussines;

  /// No description provided for @bussinesName.
  ///
  /// In es, this message translates to:
  /// **'Nombre del negocio'**
  String get bussinesName;

  /// No description provided for @unknowAddress.
  ///
  /// In es, this message translates to:
  /// **'Dirección desconocida'**
  String get unknowAddress;

  /// No description provided for @description.
  ///
  /// In es, this message translates to:
  /// **'Descripción'**
  String get description;

  /// No description provided for @contact.
  ///
  /// In es, this message translates to:
  /// **'Contacto'**
  String get contact;

  /// No description provided for @emailContact.
  ///
  /// In es, this message translates to:
  /// **'Email de contacto'**
  String get emailContact;

  /// No description provided for @phoneContact.
  ///
  /// In es, this message translates to:
  /// **'Teléfono de contacto'**
  String get phoneContact;

  /// No description provided for @sendEmail.
  ///
  /// In es, this message translates to:
  /// **'Enviar email'**
  String get sendEmail;

  /// No description provided for @callPhone.
  ///
  /// In es, this message translates to:
  /// **'Llamar'**
  String get callPhone;

  /// No description provided for @location.
  ///
  /// In es, this message translates to:
  /// **'Ubicación'**
  String get location;

  /// No description provided for @fullAddress.
  ///
  /// In es, this message translates to:
  /// **'Dirección'**
  String get fullAddress;

  /// No description provided for @getDirections.
  ///
  /// In es, this message translates to:
  /// **'Cómo llegar'**
  String get getDirections;

  /// No description provided for @selectMapApp.
  ///
  /// In es, this message translates to:
  /// **'Selecciona una aplicación de mapas'**
  String get selectMapApp;

  /// No description provided for @noMapsAvailable.
  ///
  /// In es, this message translates to:
  /// **'No hay mapas disponibles'**
  String get noMapsAvailable;

  /// No description provided for @businessGallery.
  ///
  /// In es, this message translates to:
  /// **'Imágenes'**
  String get businessGallery;

  /// No description provided for @workingHours.
  ///
  /// In es, this message translates to:
  /// **'Horario'**
  String get workingHours;

  /// No description provided for @nowClosed.
  ///
  /// In es, this message translates to:
  /// **'Cerrado ahora'**
  String get nowClosed;

  /// No description provided for @nowOpen.
  ///
  /// In es, this message translates to:
  /// **'Abierto ahora'**
  String get nowOpen;

  /// No description provided for @closed.
  ///
  /// In es, this message translates to:
  /// **'Cerrado'**
  String get closed;

  /// No description provided for @closedAllDay.
  ///
  /// In es, this message translates to:
  /// **'Cerrado todo el día'**
  String get closedAllDay;

  /// No description provided for @monday.
  ///
  /// In es, this message translates to:
  /// **'Lunes'**
  String get monday;

  /// No description provided for @tuesday.
  ///
  /// In es, this message translates to:
  /// **'Martes'**
  String get tuesday;

  /// No description provided for @wednesday.
  ///
  /// In es, this message translates to:
  /// **'Miércoles'**
  String get wednesday;

  /// No description provided for @thursday.
  ///
  /// In es, this message translates to:
  /// **'Jueves'**
  String get thursday;

  /// No description provided for @friday.
  ///
  /// In es, this message translates to:
  /// **'Viernes'**
  String get friday;

  /// No description provided for @saturday.
  ///
  /// In es, this message translates to:
  /// **'Sábado'**
  String get saturday;

  /// No description provided for @sunday.
  ///
  /// In es, this message translates to:
  /// **'Domingo'**
  String get sunday;

  /// No description provided for @about.
  ///
  /// In es, this message translates to:
  /// **'Acerca de'**
  String get about;

  /// No description provided for @serviceOptions.
  ///
  /// In es, this message translates to:
  /// **'Opciones de servicio'**
  String get serviceOptions;

  /// No description provided for @outdoowSeating.
  ///
  /// In es, this message translates to:
  /// **'Asientos al aire libre'**
  String get outdoowSeating;

  /// No description provided for @takeaway.
  ///
  /// In es, this message translates to:
  /// **'Para llevar'**
  String get takeaway;

  /// No description provided for @dineIn.
  ///
  /// In es, this message translates to:
  /// **'Para comer aquí'**
  String get dineIn;

  /// No description provided for @highlights.
  ///
  /// In es, this message translates to:
  /// **'Aspectos destacados'**
  String get highlights;

  /// No description provided for @accesibility.
  ///
  /// In es, this message translates to:
  /// **'Accesibilidad'**
  String get accesibility;

  /// No description provided for @wheelchairAccessibleEntrance.
  ///
  /// In es, this message translates to:
  /// **'Entrada accesible para silla de ruedas'**
  String get wheelchairAccessibleEntrance;

  /// No description provided for @wheelchairAccessibleSeating.
  ///
  /// In es, this message translates to:
  /// **'Asientos accesibles para silla de ruedas'**
  String get wheelchairAccessibleSeating;

  /// No description provided for @offerings.
  ///
  /// In es, this message translates to:
  /// **'Ofertas'**
  String get offerings;

  /// No description provided for @alcohol.
  ///
  /// In es, this message translates to:
  /// **'Alcohol'**
  String get alcohol;

  /// No description provided for @beer.
  ///
  /// In es, this message translates to:
  /// **'Cerveza'**
  String get beer;

  /// No description provided for @cocktails.
  ///
  /// In es, this message translates to:
  /// **'Cocktails'**
  String get cocktails;

  /// No description provided for @coffee.
  ///
  /// In es, this message translates to:
  /// **'Café'**
  String get coffee;

  /// No description provided for @healthyOptions.
  ///
  /// In es, this message translates to:
  /// **'Opciones saludables'**
  String get healthyOptions;

  /// No description provided for @smallPlates.
  ///
  /// In es, this message translates to:
  /// **'Platos pequeños'**
  String get smallPlates;

  /// No description provided for @spirits.
  ///
  /// In es, this message translates to:
  /// **'Spirits'**
  String get spirits;

  /// No description provided for @wine.
  ///
  /// In es, this message translates to:
  /// **'Vino'**
  String get wine;

  /// No description provided for @diningOptions.
  ///
  /// In es, this message translates to:
  /// **'Opciones de comedor'**
  String get diningOptions;

  /// No description provided for @breakfast.
  ///
  /// In es, this message translates to:
  /// **'Desayuno'**
  String get breakfast;

  /// No description provided for @brunch.
  ///
  /// In es, this message translates to:
  /// **'Brunch'**
  String get brunch;

  /// No description provided for @lunch.
  ///
  /// In es, this message translates to:
  /// **'Almuerzo'**
  String get lunch;

  /// No description provided for @dinner.
  ///
  /// In es, this message translates to:
  /// **'Cena'**
  String get dinner;

  /// No description provided for @catering.
  ///
  /// In es, this message translates to:
  /// **'Catering'**
  String get catering;

  /// No description provided for @dessert.
  ///
  /// In es, this message translates to:
  /// **'Postre'**
  String get dessert;

  /// No description provided for @seating.
  ///
  /// In es, this message translates to:
  /// **'Asientos'**
  String get seating;

  /// No description provided for @ammenities.
  ///
  /// In es, this message translates to:
  /// **'Amenidades'**
  String get ammenities;

  /// No description provided for @barOnSite.
  ///
  /// In es, this message translates to:
  /// **'Bar'**
  String get barOnSite;

  /// No description provided for @toilets.
  ///
  /// In es, this message translates to:
  /// **'Aseos'**
  String get toilets;

  /// No description provided for @atmosphere.
  ///
  /// In es, this message translates to:
  /// **'Atmósfera'**
  String get atmosphere;

  /// No description provided for @casual.
  ///
  /// In es, this message translates to:
  /// **'Casual'**
  String get casual;

  /// No description provided for @cosy.
  ///
  /// In es, this message translates to:
  /// **'Acogedor'**
  String get cosy;

  /// No description provided for @crowd.
  ///
  /// In es, this message translates to:
  /// **'Tipo de público'**
  String get crowd;

  /// No description provided for @groups.
  ///
  /// In es, this message translates to:
  /// **'Grupos'**
  String get groups;

  /// No description provided for @planning.
  ///
  /// In es, this message translates to:
  /// **'Planificación'**
  String get planning;

  /// No description provided for @acceptsReservations.
  ///
  /// In es, this message translates to:
  /// **'Acepta reservas'**
  String get acceptsReservations;

  /// No description provided for @payments.
  ///
  /// In es, this message translates to:
  /// **'Métodos de pago'**
  String get payments;

  /// No description provided for @creditCards.
  ///
  /// In es, this message translates to:
  /// **'Tarjetas de crédito'**
  String get creditCards;

  /// No description provided for @debitCards.
  ///
  /// In es, this message translates to:
  /// **'Tarjetas de débito'**
  String get debitCards;

  /// No description provided for @nfcMobilePayments.
  ///
  /// In es, this message translates to:
  /// **'Pagos móviles NFC'**
  String get nfcMobilePayments;

  /// No description provided for @children.
  ///
  /// In es, this message translates to:
  /// **'Niños'**
  String get children;

  /// No description provided for @goodForKids.
  ///
  /// In es, this message translates to:
  /// **'Apto para niños'**
  String get goodForKids;

  /// No description provided for @highChairs.
  ///
  /// In es, this message translates to:
  /// **'Tronas'**
  String get highChairs;

  /// No description provided for @kidsMenu.
  ///
  /// In es, this message translates to:
  /// **'Menú infantil'**
  String get kidsMenu;

  /// No description provided for @parking.
  ///
  /// In es, this message translates to:
  /// **'Aparcamiento'**
  String get parking;

  /// No description provided for @freeOfChargeStreetParking.
  ///
  /// In es, this message translates to:
  /// **'Aparcamiento en la calle gratuito'**
  String get freeOfChargeStreetParking;

  /// No description provided for @freeParkingLot.
  ///
  /// In es, this message translates to:
  /// **'Aparcamiento gratuito'**
  String get freeParkingLot;

  /// No description provided for @moreInfo.
  ///
  /// In es, this message translates to:
  /// **'Más información'**
  String get moreInfo;

  /// No description provided for @menu.
  ///
  /// In es, this message translates to:
  /// **'Menú'**
  String get menu;

  /// No description provided for @onlineOrder.
  ///
  /// In es, this message translates to:
  /// **'Pedido online'**
  String get onlineOrder;

  /// No description provided for @website.
  ///
  /// In es, this message translates to:
  /// **'Sitio web'**
  String get website;

  /// No description provided for @onlineBooking.
  ///
  /// In es, this message translates to:
  /// **'Reserva online'**
  String get onlineBooking;

  /// No description provided for @onlineReservation.
  ///
  /// In es, this message translates to:
  /// **'Reserva online'**
  String get onlineReservation;

  /// No description provided for @visit.
  ///
  /// In es, this message translates to:
  /// **'Visitar'**
  String get visit;

  /// No description provided for @see.
  ///
  /// In es, this message translates to:
  /// **'Ver'**
  String get see;

  /// No description provided for @book.
  ///
  /// In es, this message translates to:
  /// **'Reservar'**
  String get book;

  /// No description provided for @order.
  ///
  /// In es, this message translates to:
  /// **'Pedir'**
  String get order;

  /// No description provided for @sortBy.
  ///
  /// In es, this message translates to:
  /// **'Ordenar por'**
  String get sortBy;

  /// No description provided for @favorites.
  ///
  /// In es, this message translates to:
  /// **'Favoritos'**
  String get favorites;

  /// No description provided for @telegram.
  ///
  /// In es, this message translates to:
  /// **'Telegram'**
  String get telegram;

  /// No description provided for @whatsapp.
  ///
  /// In es, this message translates to:
  /// **'Whatsapp'**
  String get whatsapp;

  /// No description provided for @contactCopiedToClipboard.
  ///
  /// In es, this message translates to:
  /// **'El contacto se ha copiado al portapapeles.'**
  String get contactCopiedToClipboard;

  /// No description provided for @clipboardError.
  ///
  /// In es, this message translates to:
  /// **'Se ha producido un error al copiar al portapapeles. Por favor, inténtelo de nuevo más tarde.'**
  String get clipboardError;

  /// No description provided for @tableBooking.
  ///
  /// In es, this message translates to:
  /// **'Reserva de mesa'**
  String get tableBooking;

  /// No description provided for @serviceBooking.
  ///
  /// In es, this message translates to:
  /// **'Reserva de servicio'**
  String get serviceBooking;

  /// No description provided for @socialNetworks.
  ///
  /// In es, this message translates to:
  /// **'Redes sociales'**
  String get socialNetworks;

  /// No description provided for @twitter.
  ///
  /// In es, this message translates to:
  /// **'Twitter'**
  String get twitter;

  /// No description provided for @facebook.
  ///
  /// In es, this message translates to:
  /// **'Facebook'**
  String get facebook;

  /// No description provided for @instagram.
  ///
  /// In es, this message translates to:
  /// **'Instagram'**
  String get instagram;

  /// No description provided for @pinterest.
  ///
  /// In es, this message translates to:
  /// **'Pinterest'**
  String get pinterest;

  /// No description provided for @linkedin.
  ///
  /// In es, this message translates to:
  /// **'Linkedin'**
  String get linkedin;

  /// No description provided for @youtube.
  ///
  /// In es, this message translates to:
  /// **'Youtube'**
  String get youtube;

  /// No description provided for @tiktok.
  ///
  /// In es, this message translates to:
  /// **'Tiktok'**
  String get tiktok;

  /// No description provided for @others.
  ///
  /// In es, this message translates to:
  /// **'Otros'**
  String get others;

  /// No description provided for @internalFailure.
  ///
  /// In es, this message translates to:
  /// **'Se ha producido un error interno. Por favor, inténtelo de nuevo más tarde.'**
  String get internalFailure;

  /// No description provided for @unknownFailure.
  ///
  /// In es, this message translates to:
  /// **'Se ha producido un error desconocido. Por favor, inténtelo de nuevo más tarde.'**
  String get unknownFailure;

  /// No description provided for @couldNotLaunchPhoneFailure.
  ///
  /// In es, this message translates to:
  /// **'No se puede abrir la aplicación de teléfono. Por favor, inténtelo de nuevo más tarde.'**
  String get couldNotLaunchPhoneFailure;

  /// No description provided for @couldNotLaunchEmailFailure.
  ///
  /// In es, this message translates to:
  /// **'No se puede abrir la aplicación de correo electrónico. Por favor, inténtelo de nuevo más tarde.'**
  String get couldNotLaunchEmailFailure;

  /// No description provided for @couldNotLaunchUrlFailure.
  ///
  /// In es, this message translates to:
  /// **'No se puede abrir la URL. Por favor, inténtelo de nuevo más tarde.'**
  String get couldNotLaunchUrlFailure;

  /// No description provided for @couldNotLaunchWhatsAppFailure.
  ///
  /// In es, this message translates to:
  /// **'No se puede abrir la aplicación de WhatsApp. Por favor, inténtelo de nuevo más tarde.'**
  String get couldNotLaunchWhatsAppFailure;

  /// No description provided for @couldNotLaunchTelegramFailure.
  ///
  /// In es, this message translates to:
  /// **'No se puede abrir la aplicación de Telegram. Por favor, inténtelo de nuevo más tarde.'**
  String get couldNotLaunchTelegramFailure;

  /// No description provided for @couldNotShareFailure.
  ///
  /// In es, this message translates to:
  /// **'No se puede compartir el contenido. Por favor, inténtelo de nuevo más tarde.'**
  String get couldNotShareFailure;

  /// No description provided for @noLocationPermissionFailure.
  ///
  /// In es, this message translates to:
  /// **'No se puede acceder a la ubicación. Por favor, compruebe los permisos de la aplicación.'**
  String get noLocationPermissionFailure;

  /// No description provided for @noServiceEnabledFailure.
  ///
  /// In es, this message translates to:
  /// **'No se puede acceder a la ubicación. Por favor, compruebe que el servicio de ubicación está activado.'**
  String get noServiceEnabledFailure;

  /// No description provided for @noAddressFoundFailure.
  ///
  /// In es, this message translates to:
  /// **'No se ha encontrado la dirección para la ubicación seleccionada.'**
  String get noAddressFoundFailure;

  /// No description provided for @unauthorizedFailure.
  ///
  /// In es, this message translates to:
  /// **'No tiene permisos para realizar esta acción. Por favor, inicie sesión y vuelva a intentarlo.'**
  String get unauthorizedFailure;

  /// No description provided for @forbiddenFailure.
  ///
  /// In es, this message translates to:
  /// **'No tiene permisos para realizar esta acción. Por favor, inicie sesión y vuelva a intentarlo.'**
  String get forbiddenFailure;

  /// No description provided for @notFoundFailure.
  ///
  /// In es, this message translates to:
  /// **'No se ha encontrado la información solicitada.'**
  String get notFoundFailure;

  /// No description provided for @noInternetFailure.
  ///
  /// In es, this message translates to:
  /// **'No hay conexión a internet. Por favor, compruebe su conexión e inténtelo de nuevo.'**
  String get noInternetFailure;

  /// No description provided for @internalServerErrorFailure.
  ///
  /// In es, this message translates to:
  /// **'Se ha producido un error interno en nuestro servicio. Por favor, inténtelo de nuevo más tarde.'**
  String get internalServerErrorFailure;

  /// No description provided for @invalidCredentialsFailure.
  ///
  /// In es, this message translates to:
  /// **'Las credenciales proporcionadas no son válidas. Por favor, inténtelo de nuevo.'**
  String get invalidCredentialsFailure;

  /// No description provided for @emailInUseFailure.
  ///
  /// In es, this message translates to:
  /// **'La dirección de correo electrónico ya está siendo utilizada por otra cuenta.'**
  String get emailInUseFailure;

  /// No description provided for @invalidActivationCodeFailure.
  ///
  /// In es, this message translates to:
  /// **'El código de activación no es válido. Por favor, introduzca un código válido.'**
  String get invalidActivationCodeFailure;

  /// No description provided for @dontHaveAnAccount.
  ///
  /// In es, this message translates to:
  /// **'¿No tienes una cuenta?'**
  String get dontHaveAnAccount;

  /// No description provided for @alreadyHaveAnAccount.
  ///
  /// In es, this message translates to:
  /// **'¿Ya tienes una cuenta?'**
  String get alreadyHaveAnAccount;

  /// No description provided for @cancelVerification.
  ///
  /// In es, this message translates to:
  /// **'Cancelar verificación'**
  String get cancelVerification;

  /// No description provided for @cancelVerificationDescription.
  ///
  /// In es, this message translates to:
  /// **'¿Está seguro de que desea cancelar la verificación de su email? Siempre podrá verificar su cuenta iniciando sesión de nuevo'**
  String get cancelVerificationDescription;

  /// No description provided for @yes.
  ///
  /// In es, this message translates to:
  /// **'Sí'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In es, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @resetPasswordEmailSent.
  ///
  /// In es, this message translates to:
  /// **'Se ha enviado un email a su cuenta de correo con un enlace para restablecer su contraseña. Por favor, siga las instrucciones para completar el proceso.'**
  String get resetPasswordEmailSent;

  /// No description provided for @resetPasswordSuccess.
  ///
  /// In es, this message translates to:
  /// **'La contraseña se ha restablecido correctamente. Por favor, inicie sesión con su nueva contraseña.'**
  String get resetPasswordSuccess;

  /// No description provided for @newImage.
  ///
  /// In es, this message translates to:
  /// **'Nueva imagen'**
  String get newImage;

  /// No description provided for @dismiss.
  ///
  /// In es, this message translates to:
  /// **'Descartar'**
  String get dismiss;

  /// No description provided for @select.
  ///
  /// In es, this message translates to:
  /// **'Seleccionar'**
  String get select;

  /// No description provided for @selectImageFromSource.
  ///
  /// In es, this message translates to:
  /// **'Selecciona una imagen de una fuente'**
  String get selectImageFromSource;

  /// No description provided for @selectImageFromCamera.
  ///
  /// In es, this message translates to:
  /// **'Cámara'**
  String get selectImageFromCamera;

  /// No description provided for @selectImageFromGallery.
  ///
  /// In es, this message translates to:
  /// **'Galería'**
  String get selectImageFromGallery;

  /// No description provided for @clearAll.
  ///
  /// In es, this message translates to:
  /// **'Limpiar todo'**
  String get clearAll;

  /// No description provided for @clearAllHistorySuccess.
  ///
  /// In es, this message translates to:
  /// **'El historial se ha limpiado correctamente.'**
  String get clearAllHistorySuccess;

  /// No description provided for @historyClearDialogTitle.
  ///
  /// In es, this message translates to:
  /// **'Limpiar historial'**
  String get historyClearDialogTitle;

  /// No description provided for @historyClearDialogMessage.
  ///
  /// In es, this message translates to:
  /// **'¿Está seguro de que desea limpiar el historial?'**
  String get historyClearDialogMessage;

  /// No description provided for @messages.
  ///
  /// In es, this message translates to:
  /// **'Mensajes'**
  String get messages;

  /// No description provided for @searches.
  ///
  /// In es, this message translates to:
  /// **'Búsquedas'**
  String get searches;

  /// No description provided for @showBusiness.
  ///
  /// In es, this message translates to:
  /// **'Ver negocio'**
  String get showBusiness;

  /// No description provided for @showService.
  ///
  /// In es, this message translates to:
  /// **'Ver servicio'**
  String get showService;

  /// No description provided for @showMoreReviews.
  ///
  /// In es, this message translates to:
  /// **'Ver más reseñas'**
  String get showMoreReviews;

  /// No description provided for @chat.
  ///
  /// In es, this message translates to:
  /// **'Chat'**
  String get chat;

  /// No description provided for @map.
  ///
  /// In es, this message translates to:
  /// **'Mapa'**
  String get map;

  /// No description provided for @carousel.
  ///
  /// In es, this message translates to:
  /// **'Carrousel'**
  String get carousel;
}

class _SDelegate extends LocalizationsDelegate<S> {
  const _SDelegate();

  @override
  Future<S> load(Locale locale) {
    return SynchronousFuture<S>(lookupS(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_SDelegate old) => false;
}

S lookupS(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return SEn();
    case 'es': return SEs();
  }

  throw FlutterError(
    'S.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}

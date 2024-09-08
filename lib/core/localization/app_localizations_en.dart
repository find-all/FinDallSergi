import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class SEn extends S {
  SEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Find All';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Cancel';

  @override
  String get accept => 'Accept';

  @override
  String get retry => 'Retry';

  @override
  String get or => 'or';

  @override
  String get back => 'Back';

  @override
  String get unknowError => 'An error has occurred. Please try again later.';

  @override
  String get send => 'Send';

  @override
  String get resend => 'Resend';

  @override
  String get update => 'Update';

  @override
  String get seeMore => 'See more';

  @override
  String get close => 'Close';

  @override
  String get ofT => 'of';

  @override
  String get noResults => 'No results found.';

  @override
  String get addImage => 'Add image';

  @override
  String get anonymousAuthor => 'Anonymous';

  @override
  String get unknown => 'Unknown';

  @override
  String get clear => 'Clear';

  @override
  String get showAll => 'Show all';

  @override
  String get actualImages => 'Actual images';

  @override
  String get search => 'Search';

  @override
  String get noSearchResults => 'No results found. Try another search.';

  @override
  String get searchMore => 'Search more';

  @override
  String get services => 'Services';

  @override
  String get features => 'Features';

  @override
  String get images => 'Images';

  @override
  String get price => 'Price';

  @override
  String get microphonePermissionDenied => 'Cannot access the microphone. Please check the application permissions.';

  @override
  String get typeMessage => 'Type a message';

  @override
  String get buy => 'Buy';

  @override
  String get showProduct => 'Show product';

  @override
  String shipmentPrice(Object price) {
    return 'Shipment price $price';
  }

  @override
  String get slideToSeeMore => 'Slide to see more';

  @override
  String get categories => 'Categories';

  @override
  String get filters => 'Filters';

  @override
  String get searchHint => 'Searching...';

  @override
  String get showMoreProducts => 'Show more products';

  @override
  String get preferences => 'For you';

  @override
  String get around => 'Near you';

  @override
  String get parameters => 'Parameters';

  @override
  String get verificationEmailSent => 'A verification email has been sent to your email address. Please open the email and read the instructions to verify your account.';

  @override
  String get enterVerificationCode => 'Enter the verification code sent to your email';

  @override
  String get resendVerificationCode => 'Resend verification code';

  @override
  String get oppsSomethingWentWrong => 'Oops! Something went wrong.';

  @override
  String get passwordRequiredForThisAction => 'To complete this process you must enter your password for verification purposes.';

  @override
  String get newEmailMustBeDifferent => 'The new email must be different from the current one.';

  @override
  String get newNameMustBeDifferent => 'The new name must be different from the current one.';

  @override
  String get newEmail => 'New email';

  @override
  String get newName => 'New name';

  @override
  String get newPasswordMustBeDifferent => 'The new password must be different from the current one.';

  @override
  String get confirmNewPasswordMustBeEqual => 'The new password and the confirmation must be the same.';

  @override
  String get searchForFavorites => 'Search for favorites';

  @override
  String get required => 'This field is required';

  @override
  String minLength(Object min) {
    return 'This field must have at least $min characters';
  }

  @override
  String maxLength(Object max) {
    return 'This field must have at most $max characters';
  }

  @override
  String get emailValidation => 'Please enter a valid email';

  @override
  String get mustNotMatch => 'This field cannot match with the previous field';

  @override
  String get mustMatch => 'This field must match with the previous field';

  @override
  String get passwordValidation => 'Must have a lowercase letter, an uppercase letter, and a number';

  @override
  String get codeOnlyNumbers => 'The code must contain only numbers';

  @override
  String get noInternetConnection => 'No internet connection. Please check your network settings.';

  @override
  String get internalError => 'An error has occurred. Please try again later.';

  @override
  String get locationPermissionDeniedTitle => 'App permissions';

  @override
  String get locationPermissionDeniedMessage => 'Cannot access the location. Please check the application permissions.';

  @override
  String get openSettings => 'Open app settings';

  @override
  String get locationServiceDisabledTitle => 'Location service';

  @override
  String get locationServiceDisabledMessage => 'Cannot access the location. Please check that the location service is enabled.';

  @override
  String get errorLocationPermissionDeniedForever => 'Cannot access the location. Please check the application permissions.';

  @override
  String get errorLocationPermissionDenied => 'Cannot access the location. Please check the application permissions.';

  @override
  String get errorLocationServiceDisabled => 'Cannot access the location. Please check that the location service is enabled.';

  @override
  String get errorLocationUnknow => 'Cannot access the location. Please check your network settings.';

  @override
  String get errorAdressNotFound => 'No address found for the selected location.';

  @override
  String get errorLocationFromAddress => 'No location found for the selected address.';

  @override
  String get selectImage => 'Select image';

  @override
  String get selectImageSource => 'Select image source';

  @override
  String get selectFromCamera => 'Camera';

  @override
  String get selectFromGallery => 'Gallery';

  @override
  String get deleteImageDialogTitle => 'Delete image';

  @override
  String get deleteImageDialogMessage => 'Are you sure you want to delete this image?';

  @override
  String get permissionDialogTitle => 'Permission required';

  @override
  String get cameraPermissionDenied => 'Cannot access the camera. Please check the application permissions.';

  @override
  String get galleryPermissionDenied => 'Cannot access the gallery. Please check the application permissions.';

  @override
  String get signIn => 'Sign in';

  @override
  String get signInMessage => 'Welcome back!';

  @override
  String get backToSignIn => 'Back to sign in';

  @override
  String get signUp => 'Sign up';

  @override
  String get signUpMessage => 'Welcome!';

  @override
  String get signOut => 'Sign out';

  @override
  String get email => 'Email';

  @override
  String get emailHint => 'Enter your email';

  @override
  String get password => 'Password';

  @override
  String get passwordHint => 'Enter your password';

  @override
  String get forgetPassword => 'Forget password?';

  @override
  String get forgetPasswordMessage => 'Enter your email and we will send you a link to your email to reset your password';

  @override
  String get forgetPasswordSuccess => 'We have sent you an email to reset your password.';

  @override
  String get verificationEmailMessage => 'We have send you a link to your email to verify your account. When complete, please sign in again. If the email does not arrive, press the button resend to send it again.';

  @override
  String get sendVerificationEmailSuccess => 'We have sent you an email to verify your account.';

  @override
  String get dontHaveAccount => 'Don\'t have an account? Sign up';

  @override
  String get name => 'Name';

  @override
  String get nameHint => 'Enter your name';

  @override
  String get signInWithSocial => 'Or sign in with social media';

  @override
  String get signUpWithSocial => 'Or sign up with social media';

  @override
  String get signInWithGoogle => 'Sign in with Google';

  @override
  String get signInWithApple => 'Sign in with Apple';

  @override
  String get signUpWithGoogle => 'Sign up with Google';

  @override
  String get signUpWithApple => 'Sign up with Apple';

  @override
  String get errorEmailAlreadyInUse => 'The email address is already in use by another account.';

  @override
  String get errorWrongPassword => 'The old password is invalid.';

  @override
  String get errorWeakPassword => 'The password must be 6 characters long or more.';

  @override
  String get errorUserNotFound => 'There is no user record corresponding to this identifier. The user may have been deleted.';

  @override
  String get errorInvalidEmail => 'The email address is badly formatted.';

  @override
  String get errorUserDisabled => 'The user account has been disabled by an administrator.';

  @override
  String get errorUserCancelled => 'The user canceled the sign in request.';

  @override
  String get errorEmailUnverified => 'The operation requires a verified email.';

  @override
  String get errorInvalidCredentials => 'The email address and/or password is incorrect.';

  @override
  String get errorAccountExistsWithDifferentCredential => 'An account already exists with the same email address but different sign-in credentials. Sign in using a provider associated with this email address.';

  @override
  String get errorInvalidName => 'The name must be 3 characters long or more.';

  @override
  String get errorTooManyRequests => 'Too many requests. Try again later.';

  @override
  String get errorAuthUnknow => 'An error has occurred. Try again later.';

  @override
  String get errorUnauthenticated => 'User is not authenticated. Please sign in again.';

  @override
  String get errorInvalidAuthProvider => 'This provider is not supported. Please try again with another provider.';

  @override
  String get account => 'Account';

  @override
  String get profile => 'Profile';

  @override
  String get oldPassword => 'Old password';

  @override
  String get oldPasswordHint => 'Enter your old password';

  @override
  String get newPassword => 'New password';

  @override
  String get newPasswordHint => 'Enter your new password';

  @override
  String get confirmNewPassword => 'Confirm new password';

  @override
  String get confirmNewPasswordHint => 'Enter your new password again';

  @override
  String get errorCouldNotUpdatePassword => 'Could not update password. Please try again later.';

  @override
  String get changePasswordSuccess => 'The password has been updated successfully.';

  @override
  String get changeNameSuccess => 'The name has been updated successfully.';

  @override
  String get changeEmailSuccess => 'The email has been updated successfully.';

  @override
  String get changeProfileImageSuccess => 'The profile image has been updated successfully.';

  @override
  String get imageProfileUpdated => 'The image profile has been updated successfully.';

  @override
  String get changeRequirePassword => 'To complete this process you must enter your password for verification purposes.';

  @override
  String get changePasswordDescription => 'Complete the following fields correctly to update your password.';

  @override
  String get changeNameDescription => 'Complete the following fields correctly to update your name.';

  @override
  String get changeEmailDescription => 'Complete the following fields correctly to update your email.';

  @override
  String get changeProfileImageDescription => 'Press update to change the profile image.';

  @override
  String get changeNameTitle => 'Change name';

  @override
  String get changeEmailTitle => 'Change email';

  @override
  String get changeProfileImageTitle => 'Change profile image';

  @override
  String get changePasswordTitle => 'Change password';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get deleteAccountDescription => 'Are you sure you want to delete your account? This action cannot be undone. If success you will be redirected to the sign in screen. If you want to continue, please enter your password for verification purposes.';

  @override
  String get deleteAccountShortDescription => 'Start the process to delete your account. This action cannot be undone.';

  @override
  String get deleteAccountPassword => 'To complete this process you must enter your password for verification purposes.';

  @override
  String get errorRequiresRecentLogin => 'This operation is sensitive and requires recent authentication. Log in again before retrying this request.';

  @override
  String get errorUploadImage => 'Error uploading image. Please try again later.';

  @override
  String get errorSameEmail => 'The new email must be different from the current one.';

  @override
  String get actualProfileImage => 'Actual profile image';

  @override
  String get newProfileImage => 'New profile image';

  @override
  String get settings => 'Settings';

  @override
  String get spanish => 'Spanish';

  @override
  String get english => 'English';

  @override
  String get languageChangeError => 'Error changing language. Please try again later.';

  @override
  String get lightMode => 'Light mode';

  @override
  String get darkMode => 'Dark mode';

  @override
  String get systemMode => 'System mode';

  @override
  String get themeChangeError => 'Error changing theme. Please try again later.';

  @override
  String get help => 'Help';

  @override
  String get myReviews => 'My reviews';

  @override
  String get noReviewsYet => 'You have not made any reviews yet. Why don\'t you start now pressing button + ?';

  @override
  String get dontFindPlace => 'Don\'t find the place you are looking for?';

  @override
  String get dontFindPlaceDescription => 'Complete the following fields correctly to add a new place. Our team will review the information and if it is correct, it will be published.';

  @override
  String get addPlace => 'Add place';

  @override
  String get addPlaceDescription => 'Complete the following fields correctly to add a new place. Our team will review the information and if it is correct, it will be published.';

  @override
  String get addPlaceSuccess => 'The place has been added successfully. Our team will review the information and if it is correct, it will be published.';

  @override
  String get placeName => 'Place name';

  @override
  String get placeNameHint => 'Enter the place name';

  @override
  String get placeAddress => 'Place address';

  @override
  String get placeAddressHint => 'Enter the place address';

  @override
  String selectedAddress(Object place, Object address) {
    return 'Selected address: $address';
  }

  @override
  String get placeUrl => 'Place bussiness URL';

  @override
  String get placeUrlHint => 'Enter the bussiness place URL';

  @override
  String get searchPlace => 'Search place';

  @override
  String get searchPlaceHint => 'Enter the place name';

  @override
  String get selectAddress => 'Select address';

  @override
  String get wirteAReview => 'Write a review';

  @override
  String get recentViewed => 'Recent viewed';

  @override
  String get recentViewedEmpty => 'You have not viewed any place yet.';

  @override
  String get history => 'History';

  @override
  String get historyEmpty => 'You have not searched for any place yet.';

  @override
  String get historyClear => 'Clear history';

  @override
  String get historyClearDescription => 'Are you sure you want to clear the history? This action cannot be undone.';

  @override
  String get historyClearSuccess => 'The history has been cleared successfully.';

  @override
  String totalReviews(Object number) {
    return '$number reviews';
  }

  @override
  String get noComments => 'No comments';

  @override
  String get comments => 'Comments';

  @override
  String get publishReview => 'Publish review';

  @override
  String get reviewPublished => 'The review has been published successfully.';

  @override
  String get reviewUpdated => 'The review has been updated successfully.';

  @override
  String get newReview => 'New review';

  @override
  String get reviewRating => 'Review rating';

  @override
  String get excellet => 'Excellet';

  @override
  String get veryGood => 'Very good';

  @override
  String get normal => 'Normal';

  @override
  String get bad => 'Bad';

  @override
  String get veryBad => 'Very bad';

  @override
  String get reviewsResume => 'Reviews resume';

  @override
  String get positivePoints => 'Positive points';

  @override
  String get negativePoints => 'Negative points';

  @override
  String get detailReviews => 'Detail reviews';

  @override
  String get noContentAvailable => 'No content available';

  @override
  String get reviews => 'Reviews';

  @override
  String get seeReviews => 'See reviews';

  @override
  String get seeBusiness => 'See business';

  @override
  String get seeService => 'See service';

  @override
  String get seeProduct => 'See product';

  @override
  String get reviewing => 'Reviewing';

  @override
  String get bussines => 'Bussines';

  @override
  String get bussinesName => 'Bussines name';

  @override
  String get unknowAddress => 'Unknow address';

  @override
  String get description => 'Description';

  @override
  String get contact => 'Contact';

  @override
  String get emailContact => 'Email contact';

  @override
  String get phoneContact => 'Phone contact';

  @override
  String get sendEmail => 'Send email';

  @override
  String get callPhone => 'Call phone';

  @override
  String get location => 'Location';

  @override
  String get fullAddress => 'Address';

  @override
  String get getDirections => 'Get directions';

  @override
  String get selectMapApp => 'Select map app';

  @override
  String get noMapsAvailable => 'No maps providers available';

  @override
  String get businessGallery => 'Images';

  @override
  String get workingHours => 'Working hours';

  @override
  String get nowClosed => 'Now closed';

  @override
  String get nowOpen => 'Abierto ahora';

  @override
  String get closed => 'Closed';

  @override
  String get closedAllDay => 'Closed all day';

  @override
  String get monday => 'Monday';

  @override
  String get tuesday => 'Tuesday';

  @override
  String get wednesday => 'Wednesday';

  @override
  String get thursday => 'Thursday';

  @override
  String get friday => 'Friday';

  @override
  String get saturday => 'Saturday';

  @override
  String get sunday => 'Sunday';

  @override
  String get about => 'About';

  @override
  String get serviceOptions => 'Service options';

  @override
  String get outdoowSeating => 'Outdoow seating';

  @override
  String get takeaway => 'Takeaway';

  @override
  String get dineIn => 'Dine in';

  @override
  String get highlights => 'Highlights';

  @override
  String get accesibility => 'Accesibility';

  @override
  String get wheelchairAccessibleEntrance => 'Wheelchair accessible entrance';

  @override
  String get wheelchairAccessibleSeating => 'Wheelchair accessible seating';

  @override
  String get offerings => 'Offerings';

  @override
  String get alcohol => 'Alcohol';

  @override
  String get beer => 'Beer';

  @override
  String get cocktails => 'Cocktails';

  @override
  String get coffee => 'Coffee';

  @override
  String get healthyOptions => 'Healthy options';

  @override
  String get smallPlates => 'Small plates';

  @override
  String get spirits => 'Spirits';

  @override
  String get wine => 'Wine';

  @override
  String get diningOptions => 'Dining options';

  @override
  String get breakfast => 'Breakfast';

  @override
  String get brunch => 'Brunch';

  @override
  String get lunch => 'Lunch';

  @override
  String get dinner => 'Dinner';

  @override
  String get catering => 'Catering';

  @override
  String get dessert => 'Dessert';

  @override
  String get seating => 'Seating';

  @override
  String get ammenities => 'Ammenities';

  @override
  String get barOnSite => 'Bar on site';

  @override
  String get toilets => 'Toilets';

  @override
  String get atmosphere => 'Atmosphere';

  @override
  String get casual => 'Casual';

  @override
  String get cosy => 'Cosy';

  @override
  String get crowd => 'Crowd';

  @override
  String get groups => 'Groups';

  @override
  String get planning => 'Planning';

  @override
  String get acceptsReservations => 'Accepts reservations';

  @override
  String get payments => 'Payments';

  @override
  String get creditCards => 'Credit cards';

  @override
  String get debitCards => 'Debit cards';

  @override
  String get nfcMobilePayments => 'NFC mobile payments';

  @override
  String get children => 'Children';

  @override
  String get goodForKids => 'Good for kids';

  @override
  String get highChairs => 'High chairs';

  @override
  String get kidsMenu => 'Kids menu';

  @override
  String get parking => 'Parking';

  @override
  String get freeOfChargeStreetParking => 'Free of charge street parking';

  @override
  String get freeParkingLot => 'Free parking lot';

  @override
  String get moreInfo => 'More info';

  @override
  String get menu => 'Menu';

  @override
  String get onlineOrder => 'Online order';

  @override
  String get website => 'Website';

  @override
  String get onlineBooking => 'Online booking';

  @override
  String get onlineReservation => 'Online reservation';

  @override
  String get visit => 'Visit';

  @override
  String get see => 'See';

  @override
  String get book => 'Book';

  @override
  String get order => 'Order';

  @override
  String get sortBy => 'Sort by';

  @override
  String get favorites => 'Favorites';

  @override
  String get telegram => 'Telegram';

  @override
  String get whatsapp => 'Whatsapp';

  @override
  String get contactCopiedToClipboard => 'Contact copied to clipboard';

  @override
  String get clipboardError => 'Error copying to clipboard. Please try again later.';

  @override
  String get tableBooking => 'Table booking';

  @override
  String get serviceBooking => 'Service booking';

  @override
  String get socialNetworks => 'Social networks';

  @override
  String get twitter => 'Twitter';

  @override
  String get facebook => 'Facebook';

  @override
  String get instagram => 'Instagram';

  @override
  String get pinterest => 'Pinterest';

  @override
  String get linkedin => 'Linkedin';

  @override
  String get youtube => 'Youtube';

  @override
  String get tiktok => 'Tiktok';

  @override
  String get others => 'Others';

  @override
  String get internalFailure => 'An internal error has occurred. Please try again later';

  @override
  String get unknownFailure => 'An error has occurred. Please try again later';

  @override
  String get couldNotLaunchPhoneFailure => 'Can\'t open the phone app. Please try again later';

  @override
  String get couldNotLaunchEmailFailure => 'Cannot open email application. Please try again later';

  @override
  String get couldNotLaunchUrlFailure => 'Cannot open the URL. Please try again later';

  @override
  String get couldNotLaunchWhatsAppFailure => 'Can\'t open the WhatsApp app. Please try again later';

  @override
  String get couldNotLaunchTelegramFailure => 'Can\'t open the Telegram app. Please try again later';

  @override
  String get couldNotShareFailure => 'Content cannot be shared. Please try again later';

  @override
  String get noLocationPermissionFailure => 'The location cannot be accessed. Please check the app permissions';

  @override
  String get noServiceEnabledFailure => 'The location cannot be accessed. Please check that location service is activated';

  @override
  String get noAddressFoundFailure => 'The address for the selected location was not found';

  @override
  String get unauthorizedFailure => 'You do not have permissions to perform this action. Please log in and try again';

  @override
  String get forbiddenFailure => 'You do not have permissions to perform this action. Please log in and try again';

  @override
  String get notFoundFailure => 'The requested information was not found';

  @override
  String get noInternetFailure => 'there is no Internet conection. Please check your connection and try again';

  @override
  String get internalServerErrorFailure => 'An internal error has occurred in our service. Please try again later';

  @override
  String get invalidCredentialsFailure => 'The credentials provided are not valid. Please try again';

  @override
  String get emailInUseFailure => 'The email address is already in use by another account';

  @override
  String get invalidActivationCodeFailure => 'The activation code is not valid. Please enter a valid code';

  @override
  String get dontHaveAnAccount => 'Don\'t have an account?';

  @override
  String get alreadyHaveAnAccount => 'Already have an account?';

  @override
  String get cancelVerification => 'Cancel verification';

  @override
  String get cancelVerificationDescription => 'Are you sure you want to cancel the verification process? If you cancel, you will be redirected to the sign in screen';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get resetPasswordEmailSent => 'We have sent you an email to reset your password. Please check your email and follow the instructions';

  @override
  String get resetPasswordSuccess => 'The password has been reset successfully. Please sign in again';

  @override
  String get newImage => 'New image';

  @override
  String get dismiss => 'Dismiss';

  @override
  String get select => 'Select';

  @override
  String get selectImageFromSource => 'Select image source';

  @override
  String get selectImageFromCamera => 'Camera';

  @override
  String get selectImageFromGallery => 'Gallery';

  @override
  String get clearAll => 'Clear all';

  @override
  String get clearAllHistorySuccess => 'The history has been cleared successfully';

  @override
  String get historyClearDialogTitle => 'Clear history';

  @override
  String get historyClearDialogMessage => 'Are you sure you want to clear the history? This action cannot be undone';

  @override
  String get messages => 'Messages';

  @override
  String get searches => 'Searches';

  @override
  String get showBusiness => 'Show business';

  @override
  String get showService => 'Show service';

  @override
  String get showMoreReviews => 'Show more reviews';

  @override
  String get chat => 'Chat';

  @override
  String get map => 'Map';

  @override
  String get carousel => 'Carousel';
}

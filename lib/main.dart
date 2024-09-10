import 'package:fin_dall/app.dart';
import 'package:fin_dall/core/clients/storage_client/shared_preferences_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger_observer.dart';

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  // Initialize Firebase services.
  //await Firebase.initializeApp(
  //  options: DefaultFirebaseOptions.currentPlatform,
  //);
  // Initialize crashlytics client.
  // Catch all uncaught errors from the framework and pass them to Crashlytics.
  //FlutterError.onError = (errorDetails) {
  //  FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  //};
  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  //PlatformDispatcher.instance.onError = (error, stack) {
  //  FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  //  return true;
  //};

  runApp(
    ProviderScope(
      observers: [TalkerRiverpodObserver()],
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
      ],
      child: const App(),
    ),
  );
}

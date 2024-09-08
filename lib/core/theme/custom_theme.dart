import 'package:flutter/material.dart';

class CustomTheme {
  static get primaryLightColor => const Color.fromRGBO(54, 158, 255, 1);

  static get primaryDarkColor => const Color.fromRGBO(142, 89, 208, 1);

  static InputDecorationTheme get inputDecorationThemeLight =>
      InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        fillColor: const Color.fromRGBO(54, 158, 255, 1).withOpacity(0.2),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
      );

  static InputDecorationTheme get inputDecorationThemeDark =>
      InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        fillColor: const Color.fromRGBO(142, 89, 208, 1).withOpacity(0.2),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
      );

  static BottomNavigationBarThemeData get bottomNavigationBarThemeDataLight =>
      BottomNavigationBarThemeData(
        backgroundColor: Colors.grey[200],
        selectedItemColor: const Color.fromRGBO(54, 158, 255, 1),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        elevation: 2,
      );

  static BottomNavigationBarThemeData get bottomNavigationBarThemeDataDark =>
      BottomNavigationBarThemeData(
        backgroundColor: Colors.grey[900],
        selectedItemColor: const Color.fromRGBO(142, 89, 208, 1),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        elevation: 2,
      );

  static OutlinedButtonThemeData get outlinedButtonThemeLight =>
      OutlinedButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          side: WidgetStateProperty.all(
            const BorderSide(
              color: Color.fromRGBO(54, 158, 255, 1),
            ),
          ),
        ),
      );

  static OutlinedButtonThemeData get outlinedButtonThemeDark =>
      OutlinedButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          side: WidgetStateProperty.all(
            const BorderSide(
              color: Color.fromRGBO(142, 89, 208, 1),
            ),
          ),
        ),
      );

  static ElevatedButtonThemeData get elevatedButtonThemeDataLight =>
      ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          backgroundColor: WidgetStateProperty.all(
            const Color.fromRGBO(54, 158, 255, 1),
          ),
          foregroundColor: WidgetStateProperty.all(
            Colors.white,
          ),
        ),
      );

  static ElevatedButtonThemeData get elevatedButtonThemeDataDark =>
      ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          backgroundColor: WidgetStateProperty.all(
            const Color.fromRGBO(142, 89, 208, 1),
          ),
          foregroundColor: WidgetStateProperty.all(
            Colors.white,
          ),
        ),
      );

  static ChipThemeData get chipThemeDataLight => ChipThemeData(
        backgroundColor: Colors.transparent,
        disabledColor: const Color.fromRGBO(54, 158, 255, 1).withOpacity(0.1),
        selectedColor: const Color.fromRGBO(54, 158, 255, 1),
        secondarySelectedColor: const Color.fromRGBO(54, 158, 255, 1),
        padding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        labelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
        secondaryLabelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        brightness: Brightness.light,
      );

  static ChipThemeData get chipThemeDataDark => ChipThemeData(
        backgroundColor: Colors.transparent,
        disabledColor: const Color.fromRGBO(142, 89, 208, 1).withOpacity(0.1),
        selectedColor: const Color.fromRGBO(142, 89, 208, 1),
        secondarySelectedColor: const Color.fromRGBO(142, 89, 208, 1),
        padding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        labelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        secondaryLabelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        brightness: Brightness.dark,
      );

  static ThemeData get light {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        primary: const Color.fromRGBO(54, 158, 255, 1),
        seedColor: const Color.fromRGBO(54, 158, 255, 1),
        brightness: Brightness.light,
      ),
      inputDecorationTheme: CustomTheme.inputDecorationThemeLight,
      bottomNavigationBarTheme: CustomTheme.bottomNavigationBarThemeDataLight,
      outlinedButtonTheme: CustomTheme.outlinedButtonThemeLight,
      chipTheme: CustomTheme.chipThemeDataLight,
      elevatedButtonTheme: CustomTheme.elevatedButtonThemeDataLight,
    );
  }

  static ThemeData get dark {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        primary: const Color.fromRGBO(142, 89, 208, 1),
        onPrimary: Colors.white,
        seedColor: const Color.fromRGBO(142, 89, 208, 1),
        brightness: Brightness.dark,
      ),
      inputDecorationTheme: CustomTheme.inputDecorationThemeDark,
      bottomNavigationBarTheme: CustomTheme.bottomNavigationBarThemeDataDark,
      outlinedButtonTheme: CustomTheme.outlinedButtonThemeDark,
      chipTheme: CustomTheme.chipThemeDataDark,
      elevatedButtonTheme: CustomTheme.elevatedButtonThemeDataDark,
    );
  }
}

import 'package:flutter/material.dart';

import '../services/hex_color.dart';
import 'app_colors.dart';

class AppTheme {
  //
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: HexColor('#F1F6F9'),
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: ColorScheme.light(
        primary: Colors.white,
        onPrimary: Colors.black,
        primaryContainer: Colors.white38,
        secondary: Colors.red,
        outline: Colors.grey[400]),
    cardTheme: const CardTheme(
      color: Colors.white,
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        color: AppColors.orangeColor,
        fontSize: 57.0,
      ),
      displayMedium: TextStyle(
        color: AppColors.orangeColor,
        fontSize: 45.0,
      ),
      displaySmall: const TextStyle(
        color: Colors.black,
        fontSize: 36.0,
      ),
      headlineLarge: const TextStyle(
          color: Colors.black, fontSize: 32.0, fontWeight: FontWeight.w700),
      headlineMedium: const TextStyle(
          color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.w600),
      headlineSmall: const TextStyle(
        color: Colors.black,
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
      ),
      titleLarge: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
      ),
      titleMedium: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      ),
      titleSmall: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      ),
      bodyLarge: const TextStyle(
        color: Colors.black,
        fontSize: 16.0,
      ),
      bodyMedium: const TextStyle(
        color: Colors.black,
        fontSize: 14.0,
      ),
      bodySmall: const TextStyle(
        color: Colors.black,
        fontSize: 12.0,
      ),
      labelLarge: TextStyle(
        color: AppColors.lightGray,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      ),
      labelMedium: TextStyle(
        color: AppColors.lightGray,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      ),
      labelSmall: TextStyle(
        color: AppColors.lightGray,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: ColorScheme.dark(
      primary: AppColors.blackColor,
      onPrimary: AppColors.whiteColor,
      primaryContainer: Colors.black,
      secondary: AppColors.orangeColor,
    ),
    cardTheme: const CardTheme(
      color: Colors.black,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white54,
    ),
    textTheme: TextTheme(
      displayLarge: const TextStyle(
        color: AppColors.whiteColor,
        fontSize: 57.0,
      ),
      displayMedium: const TextStyle(
        color: AppColors.whiteColor,
        fontSize: 45.0,
      ),
      displaySmall: const TextStyle(
          color: AppColors.whiteColor,
          fontSize: 36.0,
          height: 1.12,
          fontWeight: FontWeight.w700),
      headlineLarge: const TextStyle(
          color: AppColors.whiteColor,
          fontSize: 32.0,
          fontWeight: FontWeight.w700),
      headlineMedium: const TextStyle(
          color: AppColors.whiteColor,
          fontSize: 28.0,
          fontWeight: FontWeight.w600),
      headlineSmall: const TextStyle(
        color: AppColors.whiteColor,
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
      ),
      titleLarge: const TextStyle(
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
      ),
      titleMedium: const TextStyle(
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      ),
      titleSmall: const TextStyle(
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      ),
      bodyLarge: const TextStyle(
        color: AppColors.whiteColor,
        fontSize: 16.0,
      ),
      bodyMedium: const TextStyle(
        color: AppColors.whiteColor,
        fontSize: 14.0,
      ),
      bodySmall: const TextStyle(
        color: AppColors.whiteColor,
        fontSize: 12.0,
      ),
      labelLarge: TextStyle(
        color: AppColors.lightGray,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      ),
      labelMedium: TextStyle(
        color: AppColors.lightGray,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      ),
      labelSmall: TextStyle(
        color: AppColors.lightGray,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      ),
    ),
  );
}

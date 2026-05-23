import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  /// LIGHT THEME
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Quicksand',
    brightness: Brightness.light,

    scaffoldBackgroundColor: AppColors.backgroundlight,

    primaryColor: AppColors.buttonColorLight,

    cardColor: Colors.white,

    dividerColor: AppColors.iLight,

    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.htextLight),

      bodyMedium: TextStyle(color: AppColors.iLight),
    ),
  );

  /// DARK THEME
  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Quicksand',
    brightness: Brightness.dark,

    scaffoldBackgroundColor: AppColors.backgroundDark,

    primaryColor: AppColors.buttonColorDark,

    cardColor: const Color(0xFF2A2A2A),

    dividerColor: AppColors.iDark,

    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.htextDark),

      bodyMedium: TextStyle(color: AppColors.iDark),
    ),
  );
}

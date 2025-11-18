import 'package:chatapp_ui/domain/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldLight,
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonLightMode,
      ),
    ),
    textTheme: TextTheme(
      bodySmall: TextStyle(color: AppColors.textLightMode),
      bodyLarge: TextStyle(color: AppColors.textLightMode),
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldDark,
    brightness: Brightness.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonDarkMode,
      ),
    ),
    textTheme: TextTheme(
      bodySmall: TextStyle(color: AppColors.textDarkMode),
      bodyLarge: TextStyle(color: AppColors.textDarkMode),
    ),
  );
}

import 'package:e_commerce_app/util/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppElevatedButtonTheme{
  AppElevatedButtonTheme._();

  /// -- LIGHT THEME
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.primary,
      disabledForegroundColor: AppColors.mediumGrey50,
      disabledBackgroundColor: AppColors.mediumGrey50,
      side: const BorderSide(color: AppColors.primary),
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      textStyle: const TextStyle(fontSize: 16, color: AppColors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

  /// -- DARK THEME
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.primary,
      disabledForegroundColor: AppColors.mediumGrey50,
      disabledBackgroundColor: AppColors.mediumGrey50,
      side: const BorderSide(color: AppColors.primary),
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      textStyle: const TextStyle(fontSize: 16, color: AppColors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}
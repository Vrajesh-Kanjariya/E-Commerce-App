import 'package:e_commerce_app/util/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppOutlineButtonTheme {
  AppOutlineButtonTheme._();

  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: AppColors.black,
      side: const BorderSide(color: AppColors.primary),
      textStyle:
          const TextStyle(fontSize: 16.0, color: AppColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
    ),
  );

  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: AppColors.white,
      side: const BorderSide(color: AppColors.primary),
      textStyle:
          const TextStyle(fontSize: 16.0, color: AppColors.white, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
    ),
  );
}

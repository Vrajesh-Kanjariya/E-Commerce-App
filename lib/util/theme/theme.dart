import 'package:e_commerce_app/util/constants/app_colors.dart';
import 'package:e_commerce_app/util/theme/custom_theme/app_bar_theme.dart';
import 'package:e_commerce_app/util/theme/custom_theme/app_bottom_sheet_theme.dart';
import 'package:e_commerce_app/util/theme/custom_theme/app_check_box_theme.dart';
import 'package:e_commerce_app/util/theme/custom_theme/app_chip_theme.dart';
import 'package:e_commerce_app/util/theme/custom_theme/app_elevated_button_theme.dart';
import 'package:e_commerce_app/util/theme/custom_theme/app_outline_button_theme.dart';
import 'package:e_commerce_app/util/theme/custom_theme/app_text_field_theme.dart';
import 'package:e_commerce_app/util/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme{
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.white,
    textTheme: AppTextTheme.lightTextTheme,
    appBarTheme: APPBarTheme.lightAppbarTheme,
    chipTheme: AppChipTheme.lightChipThemeData,
    checkboxTheme: AppCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    inputDecorationTheme: AppTextFieldTheme.lightInputDecorationTheme,
    outlinedButtonTheme: AppOutlineButtonTheme.lightOutlineButtonTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.black,
    textTheme: AppTextTheme.darkTextTheme,
    appBarTheme: APPBarTheme.darkAppbarTheme,
    chipTheme: AppChipTheme.lightChipThemeData,
    checkboxTheme: AppCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    inputDecorationTheme: AppTextFieldTheme.darkInputDecorationTheme,
    outlinedButtonTheme: AppOutlineButtonTheme.darkOutlineButtonTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
  );
}
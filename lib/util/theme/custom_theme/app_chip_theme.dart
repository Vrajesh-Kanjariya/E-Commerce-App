import 'package:e_commerce_app/util/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppChipTheme{
  AppChipTheme._();

  static ChipThemeData lightChipThemeData = const ChipThemeData(
    disabledColor: AppColors.mediumGrey,
    labelStyle: TextStyle(color: AppColors.black),
    selectedColor: AppColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: AppColors.white
  );

  static ChipThemeData darkChipThemeData = const ChipThemeData(
      disabledColor: AppColors.grey153,
      labelStyle: TextStyle(color: AppColors.white),
      selectedColor: AppColors.primary,
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      checkmarkColor: AppColors.white
  );
}
import 'package:e_commerce_app/util/constants/app_colors.dart';
import 'package:flutter/material.dart';

class APPBarTheme{
  APPBarTheme._();

  /// --LIGHT THEME
  static const lightAppbarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AppColors.black, size: 24.0),
    actionsIconTheme: IconThemeData(color: AppColors.black, size: 24.0),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: AppColors.black),
  );

  /// --DARK THEME
  static const darkAppbarTheme = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(color: AppColors.white, size: 24.0),
      actionsIconTheme: IconThemeData(color: AppColors.white, size: 24.0),
      titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: AppColors.white)
  );
}
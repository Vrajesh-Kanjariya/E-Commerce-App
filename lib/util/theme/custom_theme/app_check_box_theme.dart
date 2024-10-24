import 'package:e_commerce_app/util/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppCheckBoxTheme{
  AppCheckBoxTheme._();

  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.white;
        } else {
          return AppColors.black;
        }
      },
    ),
    fillColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primary;
        } else {
          return AppColors.transparent;
        }
      },
    ),
  );

  static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith(
          (states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.white;
        } else {
          return AppColors.black;
        }
      },
    ),
    fillColor: WidgetStateProperty.resolveWith(
          (states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primary;
        } else {
          return AppColors.transparent;
        }
      },
    ),
  );
}
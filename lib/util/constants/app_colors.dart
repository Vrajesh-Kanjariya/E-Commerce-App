import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // App basic color
  static const Color primary = Color(0XFFF15B27);
  static const Color secondary = Color(0XFFF15B27);
  static const Color accent = Color(0XFFF15B27);

  // Gradient color
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    colors: [
      Color(0XFFFF9A9E),
      Color(0XFFFAD0C4),
      Color(0XFFFAD0C4),
    ],
  );

  // Text color
  static const Color textPrimary = Color(0XFF333333);
  static const Color textSecondary = Color(0XFF6C757D);
  static const Color textWhite = Color(0XFFFFFFFF);

  // Background color
  static const Color light = Color(0XFFF6F6F6);
  static const Color dark = Color(0XFF272727);
  static const Color primaryBackground = Color(0XFFF3F5FF);

  // Background container color
  static const Color lightContainer = Color(0XFFF6F6F6);
  static Color darkContainer = Colors.white.withOpacity(0.1);

  // Button color
  static const Color buttonPrimary = Color(0XFFF15B27);
  static const Color buttonSecondary = Color(0XFF6C757D);
  static const Color buttonDisabled = Color(0XFFC4C4C4);

  // Border color
  static const Color borderPrimary = Color(0XFFD9D9D9);
  static const Color borderSecondary = Color(0XFFE6E6E6);

  // Error and validation color
  static const Color success = Color(0xFF388E3C);
  static const Color info = Color(0xFF1976D2);
  static const Color warning = Color(0xFFF57C00);
  static const Color error = Color(0xFFD32F2F);

  // Neutral shades
  static const Color white = Color(0XFFFFFFFF);
  static const Color black = Color(0XFF000000);
  static const Color transparent = Color(0x00000000);
  static const Color black12 = Color(0x1F000000);
  static const Color darkerGrey = Color(0XFF4F4F4F);
  static const Color darkGrey = Color(0XFF939393);
  static const Color grey = Color(0XFFE0E0E0);
  static const Color softGrey = Color(0XFFF4F4F4);
  static const Color lightGrey = Color(0XFFF9F9F9);
  static const Color mediumGrey = Color(0XFFA7AFB3);
  static const Color grey153 = Color(0XFF999999);
}
import 'package:flutter/material.dart';

class AppColors {

  static const Color primary = Color(0XFFF15B27);
  static const Color accentColorShadow = Color.fromRGBO(229, 65, 28, .40);
  static const Color softAccentColor = Color.fromRGBO(254, 234, 209, 1);
  static const Color splashScreenColor = Color(0XFFF15B27);
  static const Color lightOrange = Color(0XFFFFECE5);
  static const Color lightGreen = Color(0XFFE6F2E7);
  static const Color appGreen = Color(0XFF016A37);
  static const Color appBlue = Color(0XFF28306D);
  static const Color appGrey = Color(0XFF919199);
  static const Color mistyRose = Color(0XFFFFE1D8);
  static const Color tabBgColor = Color(0XFFF9F9F9);
  static const Color lightGrey = Color(0XFFD9D6D6);
  static const Color borderColor = Color(0XFF81878C);
  static const Color filterBg = Color(0XFFF7F8FB);
  static const Color textColorGrey = Color(0XFF535766);
  static const Color detailsOfferBg = Color(0XFFF7F8FB);
  static const Color appScreenBg = Color(0XFFFAFAFA);
  static const Color appScreenBg2 = Color(0XFFF1F5F7);
  static const Color textGreen = Color(0XFF146C39);
  static const Color success = Color(0xFF43a047);
  static const Color info = Color(0xFF2196f3);
  static const Color warning = Color(0xFFef6c00);
  static const Color danger = Color(0xFFef5350);
  static const Color error = Color(0xffb00020);

  static const Color white = Color(0XFFFFFFFF);
  static const Color black = Color(0XFF000000);
  static const Color transparent = Color(0x00000000);
  static const Color black12 = Color(0x1F000000);
  static const Color noColor = Color.fromRGBO(255, 255, 255, 0);
  static const Color darkGrey = Color.fromRGBO(107, 115, 119, 1);
  static const Color mediumGrey = Color.fromRGBO(167, 175, 179, 1);
  static const Color blueGrey = Color.fromRGBO(168, 175, 179, 1);
  static const Color mediumGrey50 = Color.fromRGBO(167, 175, 179, .5);
  static const Color grey153 = Color.fromRGBO(153, 153, 153, 1);
  static const Color darkFontGrey = Color.fromRGBO(62, 68, 71, 1);
  static const Color fontGrey = Color.fromRGBO(107, 115, 119, 1);
  static const Color textFieldGrey = Color.fromRGBO(209, 209, 209, 1);
  static const Color golden = Color.fromRGBO(255, 168, 0, 1);
  static const Color amber = Color.fromRGBO(254, 234, 209, 1);
  static const Color amberMedium = Color.fromRGBO(254, 240, 215, 1);
  static const Color goldenShadow = Color.fromRGBO(255, 168, 0, .4);
  static const Color green = Colors.green;

  static const Color appBarBg = Color(0XFFF9F9F9);
  static const Color bgColor = Color(0XFF4E7D89);

  // gradient color for coupons
  static const Color gigas = Color.fromRGBO(95, 74, 139, 1);
  static const Color poloBlue = Color.fromRGBO(152, 179, 209, 1);

  //------------
  static const Color blueChill = Color.fromRGBO(71, 148, 147, 1);
  static const Color cruise = Color.fromRGBO(124, 196, 195, 1);

  //---------------
  static const Color brickRed = Color.fromRGBO(191, 25, 49, 1);
  static const Color cinnabar = Color.fromRGBO(226, 88, 62, 1);

  static TextTheme textTheme1 = const TextTheme(
    bodyLarge: TextStyle(fontFamily: "PublicSansSerif", fontSize: 14),
    bodyMedium: TextStyle(fontFamily: "PublicSansSerif", fontSize: 12),
  );

  static ColorScheme colorSchemeLight = const ColorScheme.light(
    primary: primary,
    secondary: primary,
  );

  static LinearGradient buildLinearGradient3() {
    return const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [AppColors.poloBlue, AppColors.gigas],
    );
  }

  static LinearGradient buildLinearGradient2() {
    return const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [AppColors.cruise, AppColors.blueChill],
    );
  }

  static LinearGradient buildLinearGradient1() {
    return const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [AppColors.cinnabar, AppColors.brickRed],
    );
  }

}
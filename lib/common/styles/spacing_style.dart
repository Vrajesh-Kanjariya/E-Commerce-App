import 'package:e_commerce_app/util/constants/app_sizes.dart';
import 'package:flutter/cupertino.dart';

class SpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
      top: AppSizes.appBarHeight,
      left: AppSizes.defaultSpace,
      right: AppSizes.defaultSpace,
      bottom: AppSizes.defaultSpace,
  );
}
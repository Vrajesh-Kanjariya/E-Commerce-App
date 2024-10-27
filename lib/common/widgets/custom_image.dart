import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/util/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomImage {
  static Widget cacheNetworkImage(String url, {BoxFit fit = BoxFit.cover, bool isPlaceholder = false}) {
    return CachedNetworkImage(
      fit: fit,
      imageUrl: url,
      progressIndicatorBuilder: (context, string, progress) {
        return const Center(
          child: SpinKitPulse(
            color: AppColors.primary,
            size: 40,
          ),
        );
      },
      errorWidget: (context, url, error) => const Icon(
        Icons.error_rounded,
        color: AppColors.error,
      ),
    );
  }

  static Widget svgImage(
      String imagePath, {
        BoxFit fit = BoxFit.cover,
        ColorFilter? colorFilter,
        bool isShadow = true,
        double height = 25,
        double width = 25,
      }) {
    return SvgPicture.asset(
      imagePath,
      fit: fit,
      height: height,
      width: width,
      colorFilter: colorFilter,
    );
  }
}
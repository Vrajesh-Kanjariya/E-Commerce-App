import 'package:e_commerce_app/util/constants/app_colors.dart';
import 'package:e_commerce_app/util/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HelperFunction {
  static Color getColor(String value) {
    if(value == 'Green'){
      return Colors.green;
    } else if(value == 'Red'){
      return Colors.red;
    } else {
      return Colors.blue;
    }
  }

  static void showSnackBar(String message, MessageType messageType,{SnackPosition position = SnackPosition.BOTTOM, }){
    Widget? icon;
    Color bgColor = AppColors.success;
    Color textColor = Colors.white;
    String type = 'Success';

    if (messageType == MessageType.success) {
      bgColor = AppColors.success;
      type = 'Success';
      icon = Icon(Icons.check_circle, color: textColor);
    } else if (messageType == MessageType.error) {
      bgColor = AppColors.error;
      type = 'Error';
      icon = Icon(Icons.error, color: textColor);
    } else if (messageType == MessageType.info) {
      bgColor = AppColors.info;
      type = 'Info';
      icon = Icon(Icons.info, color: textColor);
    } else if (messageType == MessageType.warning) {
      bgColor = AppColors.warning;
      type = 'Warning';
      icon = Icon(Icons.warning, color: textColor);
    }

    Get.snackbar(
      type, // Title of the Snack bar
      message, // Message
      snackPosition: position, // Position of the snack bar
      backgroundColor: bgColor, // Background color
      borderRadius: 10, // Corner radius
      margin: const EdgeInsets.all(10), // Margin around the snack bar
      colorText: Colors.white, // Text color
      duration: const Duration(seconds: 3), // Duration the snack bar is visible
      icon: icon, // Custom icon
      shouldIconPulse: true, // Icon pulsing animation
      isDismissible: true, // Allow dismissal by tapping/swiping
      forwardAnimationCurve: Curves.easeOutBack, // Animation curve
      // mainButton: TextButton(
      //   onPressed: () {
      //     // Custom action on button press
      //     Get.back(); // Close the snack bar
      //   },
      //   child: Text(
      //     'Undo',
      //     style: TextStyle(color: Colors.white),
      //   ),
      // ),
    );
  }

  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('OK'))
          ],
        );
      },
    );
  }

  static Route pageRoute(Widget screen) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => screen,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset(0.0, 0.0);
        const curve = Curves.ease;

        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  static void navigate(
      BuildContext context, Widget screen, bool isReplace) async {
    if (isReplace) {
      Get.off(
        () => screen,
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
      ); // Replaces the current screen
    } else {
      Get.to(
        () => screen,
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
      );
    }
  }

  static void navigateAndRemove(
      BuildContext context, Widget screen, bool isReplace) async {
      Get.offAll(
        () => screen,
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
      ); // Replaces all previous routes with the new one
      Get.to(
        () => screen,
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
      ); // Navigates to the new screen without removing all previous routes
    // Navigator.of(context).pushAndRemoveUntil(
    //     MaterialPageRoute(builder: (context) => Main()),
    //         (Route route) => false);
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (context) => screen,
    //   ),
    // );
  }

  static dynamic navigateAndReturn(BuildContext context, Widget screen, bool isDialog) async {
    if (isDialog) {
      return await Get.dialog(
        screen, // Shows the screen as a dialog
        barrierDismissible: false,
        transitionDuration: const Duration(milliseconds: 100),
        transitionCurve: Curves.easeInOut,
      );
    } else {
      return await Get.to(
        () => screen,
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
      ); // Navigates to the screen and waits for the result
    }
  }

  String truncateText(String text, int maxLength) {
    if(text.length <= maxLength){
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime date, {String format = 'dd-MMM-yyyy'}) {
    return DateFormat(format).format(date);
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidget(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for(var i = 0; i < widgets.length; i += rowSize){
      final rowChildren = widgets.sublist(i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }
}
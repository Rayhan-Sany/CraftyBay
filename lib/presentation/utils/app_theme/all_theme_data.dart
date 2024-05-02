import 'package:flutter/material.dart';
import '../app_color.dart';

class AllThemeData{
  static ProgressIndicatorThemeData get progressIndicatorTheme{
    return const ProgressIndicatorThemeData(
        color: AppColor.primaryColor
    );
  }
  static IconButtonThemeData get iconButtonTheme{
    return IconButtonThemeData(
      style: IconButton.styleFrom(
        backgroundColor: Colors.grey.shade200,
            foregroundColor: Colors.grey.shade700
      )
    );
  }
  static BottomNavigationBarThemeData get bottomNavBarTheme{
    return const BottomNavigationBarThemeData(
      elevation: 10,
      selectedItemColor: AppColor.primaryColor,
    );
  }
 static  TextTheme get textTheme {
    return const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      headlineSmall: TextStyle(
        fontSize: 16,
        color: Colors.blueGrey,
      ),
    );
 }
}
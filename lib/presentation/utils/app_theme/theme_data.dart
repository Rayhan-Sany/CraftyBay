import 'package:crafty_bay/presentation/utils/app_theme/all_theme_data.dart';
import 'package:flutter/material.dart';

import '../app_color.dart';

class AppThemeData{
  static  ThemeData myAppThemeData(){
    return ThemeData(
      colorSchemeSeed:AppColor.primaryColor,
      progressIndicatorTheme: AllThemeData.progressIndicatorTheme,
      iconButtonTheme: AllThemeData.iconButtonTheme,
      bottomNavigationBarTheme: AllThemeData.bottomNavBarTheme,
      textTheme:AllThemeData.textTheme
    );
  }
}
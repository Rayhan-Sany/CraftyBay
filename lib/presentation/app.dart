import 'package:crafty_bay/presentation/screens/splash_screen.dart';
import 'package:crafty_bay/presentation/widgets/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crafty Bay',
      theme: AppThemeData.myAppThemeData(),
      home: const SplashScreen(),
    );
  }
}

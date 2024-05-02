import 'package:crafty_bay/presentation/screens/auth_screens/otp_verification_screen.dart';
import 'package:crafty_bay/presentation/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  Future<void>_moveToNextScreen()async{
   await Future.delayed(const Duration(seconds:3));
    Get.to(()=>const OtpVerificationScreen(email: ''));
  }
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _moveToNextScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            SvgPicture.asset(AssetsPath.appLogoSvg,width:110),
            const Spacer(),
            const CircularProgressIndicator(),
            const SizedBox(height:18),
             Text('Version 1.0.0',style: TextStyle(
              color: Colors.black.withOpacity(0.5),fontSize:12
            )),
            const SizedBox(height: 19)
          ],
        ),
      ),
    );
  }
}

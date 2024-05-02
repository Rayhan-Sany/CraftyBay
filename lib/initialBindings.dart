import 'package:crafty_bay/presentation/controllers/otp_screen_controller.dart';
import 'package:get/get.dart';

class InitialBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() =>OtpScreenController(),fenix:true);
  }

}
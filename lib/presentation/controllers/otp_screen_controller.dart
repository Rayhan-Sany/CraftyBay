import 'package:get/get.dart';

class OtpScreenController extends GetxController{
  int counter = 10;
  bool isResendButtonAvailable = false;
  Future<void> getResendButton() async {
    if (counter == 0) {
      isResendButtonAvailable = true;
      update();
      counter=10;
      return;
    }
    await Future.delayed(const Duration(seconds: 1));
    counter--;
    update();
    getResendButton();
  }
}
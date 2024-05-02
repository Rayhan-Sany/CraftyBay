import 'package:get/get.dart';

class OtpScreenController extends GetxController{
  int counter = 10;
  bool isResendButtonAvailable = false;
  Future<void> resendButton() async {
    if (counter == 0) {
      isResendButtonAvailable = true;
      update();
      counter=10;
      return;
    }
    print(counter);
    await Future.delayed(const Duration(seconds: 1));
    counter--;
    update();
    resendButton();
  }
}
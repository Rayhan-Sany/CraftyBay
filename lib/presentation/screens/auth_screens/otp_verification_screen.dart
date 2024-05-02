import 'package:crafty_bay/presentation/controllers/otp_screen_controller.dart';
import 'package:crafty_bay/presentation/widgets/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../utils/app_color.dart';
import 'complete_profile_screen.dart';

class OtpVerificationScreen extends StatefulWidget {
  final String email;

  const OtpVerificationScreen({super.key, required this.email});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _otpTEController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.find<OtpScreenController>().getResendButton();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const SizedBox(height: 100),
                const AppLogo(),
                const SizedBox(height: 16),
                Text('Enter OTP Code', style: textTheme.headlineLarge),
                const SizedBox(height: 4),
                Text('A 4 digit OTP code has been sent',
                    style: textTheme.headlineSmall),
                const SizedBox(height: 24),
                _buildPinField(),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => const CompleteProfileScreen());
                  },
                  child: const Text('Next'),
                ),
                const SizedBox(height: 24),
               GetBuilder<OtpScreenController>(
                 builder: (otpScreenController) {
                   return _buildResendCodeMessage();
                 }
               ),
                GetBuilder<OtpScreenController>(
                    builder: (otpScreenController) {
                      return otpScreenController.isResendButtonAvailable
                          ? TextButton(
                        onPressed: () {
                         otpScreenController.getResendButton();
                        },
                        child: const Text('Resend Code'),
                      )
                          : const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Resend Code',
                          style: TextStyle(color: Colors.grey),
                        ),
                      );
                    }
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildResendCodeMessage() {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w500,
        ),
        children: [
          const TextSpan(text: 'This code will expire in '),
          // TODO: complete this count down
          TextSpan(
              text: '${Get.find<OtpScreenController>().counter}s',
              style: const TextStyle(color: AppColor.primaryColor)),
        ],
      ),
    );
  }

  Widget _buildPinField() {
    return PinCodeTextField(
      length: 6,
      obscureText: false,
      animationType: AnimationType.fade,
      keyboardType: TextInputType.number,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 40,
        activeFillColor: Colors.white,
        inactiveFillColor: Colors.transparent,
        selectedFillColor: Colors.white,
      ),
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      controller: _otpTEController,
      appContext: context,
    );
  }

  @override
  void dispose() {
    _otpTEController.dispose();
    super.dispose();
  }
}

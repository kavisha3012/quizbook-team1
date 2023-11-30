import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../views/SignUp_Screen.dart';

class OTPController extends GetxController {
  final TextEditingController otpController = TextEditingController();

  void sendOTP() {
    if (otpController.text.length == 4) {
      Get.to(() => SignUpScreen(mobileNumber: ''));
    }
  }
}

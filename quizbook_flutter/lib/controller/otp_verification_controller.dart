import 'dart:convert';
import 'package:animaed/views/Login_Screen.dart';
import 'package:animaed/views/SignUp_Screen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../models/api_responce.dart';
import '../utils/api_common_class.dart';
import '../utils/utility.dart';

class OTPController extends GetxController {
  final TextEditingController otpController = TextEditingController();

  void sendOTP() {
    if (otpController.text.length == 4) {
      Get.to(() => SignUpScreen(mobileNumber: ''));
    }
  }

  final TextEditingController mobileController =
      TextEditingController(text: '');
  String mobileNumber = '';

  void verifyOtp() {
    mobileNumber = mobileController.text;
    Get.to(() => SignUpScreen(
          mobileNumber: '',
        ));
  }

  Future<void> verifyOtpApi() async {
    try {
      final ApiResponse response = await ApiController.post(
          'http://192.168.1.23:3000/users/login',
          json.encode({'mobileNumber': '7405369353', 'OTP': '1234'}));
    } catch (e) {}
  }

  Future<void> changeDate({required String gender}) async {
    try {
      final DateTime? date = await Utility.showDatePickerDialog();
      if (date != null) {
        mobileController.text = "fgsdgsdg";
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

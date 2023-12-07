import 'package:animaed/views/Login_Screen.dart';
import 'package:animaed/views/SignUp_Screen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../utils/utility.dart';

class OTPController extends GetxController {
  final TextEditingController mobileController =
      TextEditingController(text: '');
  String mobileNumber = '';

  void verifyOtp() {
    mobileNumber = mobileController.text;
    Get.to(() => SignUpScreen(
          mobileNumber: '',
        ));
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

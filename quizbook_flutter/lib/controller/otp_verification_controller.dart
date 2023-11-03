import 'package:animaed/views/Login_Screen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../utils/utility.dart';

class OTPController extends GetxController {
  final TextEditingController mobileController =
      TextEditingController(text: '');
  String mobileNumber = '';

  Rx<String> selectedgender = 'Male'.obs;

  RxString selectedDesignation = 'Teacher'.obs;

  void verifyOtp() {
    mobileNumber = mobileController.text;
    Get.to(() => LoginScreen());
  }

  void changeGender({required String gender}) {
    selectedgender.value = gender;
    print(selectedgender.value);
  }

  void changeTeacher({required String teacher}) {
    selectedDesignation.value = teacher;
    print(selectedDesignation.value);
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

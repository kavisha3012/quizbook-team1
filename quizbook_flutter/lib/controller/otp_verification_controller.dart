import 'package:animaed/mobilenoscreen.dart';
import 'package:get/get.dart';

class OTPController extends GetxController {
  String mobileNumber = '';

  void verifyOtp({required String number}) {
    mobileNumber = number;
    Get.to(() => MobileNoScreen());
  }
}

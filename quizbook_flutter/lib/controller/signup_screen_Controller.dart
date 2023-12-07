import 'package:get/get.dart';
import 'package:utility/utility.dart';

class SignUpController extends GetxController {
  final RxString selectedGender = 'Select Gender'.obs;
  final RxString selectedBirthDate = 'Select Date'.obs;
  final RxString selectedDesignation = 'Select Designation'.obs;
  RxList<String> genders = ["Select Gender", "Male", "Female", "Other"].obs;

  RxList<String> designations =
      ["Select Designation", "Teacher", "Engineer", "Principal"].obs;

  void chnageGender(String gender) {
    if (gender != 'Select') {
      selectedGender.value = gender;
      genders.removeFirst();
      genders.refresh();
    }
  }

  void chnageBirthDate(String Date) {
    selectedBirthDate.value = Date;
  }

  void chnageDesignation(String Designation) {
    if (Designation != 'Select') {
      selectedDesignation.value = Designation;
      designations.removeFirst();
      designations.refresh();
    }

    void verifyOtp() {}
  }
}

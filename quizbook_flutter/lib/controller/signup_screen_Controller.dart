import 'package:get/get.dart';

class SignUpController extends GetxController {
  final RxString selectedGender = 'Select Gender'.obs;
  final RxString selectedBirthDate = 'Select Date'.obs;
  final RxString selectedDesignation = 'Select Designation'.obs;

  // Function to change the selected gender
  void changeGender(String gender) {
    selectedGender.value = gender;
  }

  // Function to change the selected birth date
  void changeBirthDate(String date) {
    selectedBirthDate.value = date;
  }

  // Function to change the selected designation
  void changeDesignation(String designation) {
    selectedDesignation.value = designation;
  }
}

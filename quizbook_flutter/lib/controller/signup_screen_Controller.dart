import 'package:get/get.dart';

class SignUpController extends GetxController {
  final RxString selectedGender = 'Male'.obs;
  final RxString selectedBirthDate = 'Select Date'.obs;
  final RxString selectedDesignation = 'Teacher'.obs;

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

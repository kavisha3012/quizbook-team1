import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/otp_verification_controller.dart';
import '../controller/signup_screen_Controller.dart';
import '../utils/constants.dart';
import '../utils/utility.dart';
import '../widgets/common_appbar.dart';
import '../widgets/common_button.dart';
import '../widgets/common_dropdown.dart';
import '../widgets/common_textfield.dart';
import 'CheptorName_Screen.dart';

class SignUpScreen extends StatelessWidget {
  final _key = GlobalKey<FormState>();

  final String mobileNumber;

  final SignUpController _controller = Get.put(SignUpController());

  final TextEditingController _firstNameController = TextEditingController();

  final TextEditingController _lastNameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _mobileController = TextEditingController();

  SignUpScreen({super.key, required this.mobileNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CommonAppBarScreen(
          title: 'Update Profile',
          backgroundColor: whiteColor, // Customize the color here
          centerTitle: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _key,
            child: Column(
              children: [
                SizedBox(
                  height: 18,
                ),
                Image.asset(changeProfile, height: 120),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CommonTextFormField(
                    autoFocus: true,
                    controller: _firstNameController,
                    label: 'First Name',
                    errorMessage: 'Enter Your First Name',
                    inputType: TextInputType.text,
                    formatter: [],
                    length: 60,
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CommonTextFormField(
                    controller: _lastNameController,
                    label: 'Last Name',
                    errorMessage: 'Enter Your Last Name',
                    inputType: TextInputType.text,
                    formatter: [],
                    length: 60,
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CommonTextFormField(
                    controller: _emailController,
                    label: 'Email ID',
                    errorMessage: 'Please enter valid Email Id',
                    inputType: TextInputType.text,
                    formatter: [],
                    length: 60,
                    onTap: () {},
                    isEmailField: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CommonTextFormField(
                    controller: _mobileController,
                    label: 'Mobile Number',
                    errorMessage: 'Please enter valid Number',
                    inputType: TextInputType.number,
                    formatter: [mobileLengthFormatter, mobileNumberFormater],
                    length: 10,
                    onTap: () {},
                    isMobileNumber: true,
                    // isReadOnly: true,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Gender',
                              style: TextStyle(color: greyColor),
                            ),
                            Container(
                              width: 900,
                              child: Obx(
                                () => CommonDropDown(
                                    items: const [
                                      "Select Gender",
                                      "Male",
                                      "Female",
                                      "Other"
                                    ],
                                    selectedItem:
                                        _controller.selectedGender.value,
                                    onChange: (newVal) {
                                      if (newVal != "Select Gender") {
                                        _controller.changeGender(newVal!);
                                      }
                                    }),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(00, 00, 20, 00),
                        child: InkWell(
                          onTap: () {
                            Utility.showDatePickerDialog().then((pickedDate) {
                              if (pickedDate != null) {
                                _controller.changeBirthDate(
                                    "${pickedDate.toLocal()}".split(' ')[0]);
                              }
                            });
                          },
                          child: InputDecorator(
                              decoration: InputDecoration(
                                  labelText: 'BirthDate',
                                  labelStyle: TextStyle(color: greyColor)),
                              child: Obx(() =>
                                  Text(_controller.selectedBirthDate.value))),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align label to the left
                    children: [
                      Text('Designation',
                          style: TextStyle(
                              fontSize: 13, color: greyColor)), // Add the label
                      Obx(
                        () => CommonDropDown(
                          items: [
                            "Select Designation",
                            "Teacher",
                            "English",
                            "hindi"
                          ],
                          selectedItem: _controller.selectedDesignation.value,
                          onChange: (newVal) {
                            if (newVal != "Select Designation") {
                              _controller.changeDesignation(newVal!);
                            }
                            // _controller.changeDesignation(abc!);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CommonButton(
          onPress: () async {
            if (_key.currentState!.validate()) {
              //  _controller.verifyOtp();
              Get.to(CheptarNameScreen());
            }
          },
          title: 'Next'),
    );
  }
}

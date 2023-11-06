import 'package:animaed/controller/signup_screen_Controller.dart';
import 'package:animaed/utils/constants.dart';
import 'package:animaed/utils/utility.dart';
import 'package:animaed/views/Dashboard_Page.dart';
import 'package:animaed/views/Question_Screen.dart';
import 'package:animaed/widgets/common_button.dart';
import 'package:animaed/widgets/common_dropdown.dart';
import 'package:animaed/widgets/common_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/otp_verification_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/common_appbar.dart';

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
                    controller: _firstNameController,
                    label: 'First Name',
                    errorMessage: 'Enter Your First Name',
                    inputType: TextInputType.text,
                    formatter: [],
                    length: 60,
                    onTap: () {},
                    textInputAction: '',
                  ),
                ),
                SizedBox(
                  height: 01,
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
                    textInputAction: '',
                  ),
                ),
                SizedBox(
                  height: 01,
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
                    textInputAction: '',
                  ),
                ),
                SizedBox(
                  height: 01,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CommonTextFormField(
                    controller: _mobileController,
                    label: 'Mobile Number',
                    errorMessage: 'Please enter valid Number',
                    inputType: TextInputType.number,
                    formatter: [],
                    length: 10,
                    onTap: () {},
                    isMobileNumber: true,
                    textInputAction: '',
                    isReadOnly: true,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align label to the left
                        children: [
                          Text('Gender',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: purpleColor)), // Add the label
                          Container(
                            width: 200,
                            child: Obx(
                              () => CommonDropDown(
                                items: const ["Male", "Female", "Other"],
                                selectedItem: _controller.selectedGender.value,
                                onChange: (newVal) {
                                  _controller.changeGender(newVal!);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
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
                                labelStyle: TextStyle(color: purpleColor)),
                            child: Obx(() =>
                                Text(_controller.selectedBirthDate.value))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align label to the left
                  children: [
                    Text('Designation',
                        style: TextStyle(fontSize: 13)), // Add the label
                    Obx(
                      () => CommonDropDown(
                        items: ["Teacher", "English", "hindi"],
                        selectedItem: _controller.selectedDesignation.value,
                        onChange: (abc) {
                          _controller.changeDesignation(abc!);
                        },
                      ),
                    ),
                  ],
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
              Get.to(DashboardScreen());
            }
          },
          title: 'Next'),
    );
  }
}

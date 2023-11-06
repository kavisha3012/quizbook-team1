import 'package:animaed/controller/otp_verification_controller.dart';
import 'package:animaed/utils/constants.dart';
import 'package:animaed/utils/utility.dart';
import 'package:animaed/views/SignUp_Screen.dart';
import 'package:animaed/widgets/common_button.dart';
import 'package:animaed/widgets/common_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _key = GlobalKey<FormState>();
  final OTPController _controller = Get.put(OTPController());
  final TextEditingController _mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 300,
            width: double.infinity,
            child: Stack(
              children: [
                Image.asset(
                  bgImage,
                  height: 400,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  bottom: 50,
                  left: MediaQuery.of(context).size.width / 2.9,
                  child: Image.asset(
                    imgLogo,
                    fit: BoxFit.fill,
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _key,
              child: CommonTextFormField(
                autoFocus: true,
                controller: _controller.mobileController,
                label: 'Mobile Number',
                errorMessage: 'Please enter valid Number',
                inputType: TextInputType.number,
                formatter: [mobileNumberFormater, mobileLengthFormatter],
                onTap: () {},
                isMobileNumber: true,
                isDropDown: false,
                // isReadOnly: false,
                textInputAction: '',
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CommonButton(
          onPress: () async {
            if (_key.currentState!.validate()) {
              _controller.verifyOtp();
              Get.to(SignUpScreen(mobileNumber: _mobileController.text));
            }
          },
          title: 'SEND OTP'),
    );
  }
}

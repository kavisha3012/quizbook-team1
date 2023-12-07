import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../controller/otp_verification_controller.dart';
import '../utils/constants.dart';
import '../widgets/common_button.dart';
import '../widgets/common_textfield.dart';
import 'Otp_Screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _key = GlobalKey<FormState>();
  // final OTPController _controller = Get.put(OTPController());
  final TextEditingController _mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Image.asset(bgImage, fit: BoxFit.fill)),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imgLogo,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Form(
                    key: _key,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CommonTextFormField(
                        autoFocus: true,
                        hint: 'Enter Your Mobile Number',
                        controller: _mobileController,
                        label: 'Mobile Number',
                        errorMessage: 'Please enter valid Number',
                        inputType: TextInputType.number,
                        formatter: [
                          mobileNumberFormater,
                          mobileLengthFormatter
                        ],
                        onTap: () {},
                        isMobileNumber: true,
                        // isReadOnly: false,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 300,
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: CommonButton(
            onPress: () async {
              if (_key.currentState!.validate()) {
                final data = _mobileController.text;
                print(data);
                // _controller.verifyOtp();
                Get.to(() => OTPScreen(
                      mobile: data,
                    ));
              }
            },
            title: 'Send OTP'));
  }
}

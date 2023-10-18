import 'package:animaed/FirstScreen.dart';
import 'package:animaed/controller/otp_verification_controller.dart';
import 'package:animaed/utils/constants.dart';
import 'package:animaed/widgets/common_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileNoScreen extends StatelessWidget {
  MobileNoScreen({super.key});

  final TextEditingController _mobileController = TextEditingController();
  final _key = GlobalKey<FormState>();
  final OTPController _controller = Get.put(OTPController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 400,
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
                  left: MediaQuery.of(context).size.width / 2,
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
                controller: _mobileController,
                label: 'Mobile number',
                errorMessage: 'PLease enter valid number',
                inputType: TextInputType.number,
                formatter: [],
                length: 10,
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 50,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor,
            ),
            onPressed: () {
              if (_key.currentState!.validate()) {
                _controller.verifyOtp(number: _mobileController.text);
              }
            },
            child: Text('Send OTP')),
      ),
    );
  }
}

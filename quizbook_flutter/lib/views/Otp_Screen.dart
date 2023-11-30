import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../utils/constants.dart';
import '../widgets/common_appbar.dart';
import '../widgets/common_button.dart';
import '../widgets/common_textfield.dart';
import 'SignUp_Screen.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final _key = GlobalKey<FormState>();
  final TextEditingController _otpController = TextEditingController();
  // final TextEditingController _mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CommonAppBarScreen(
          title: 'OTP Vefification',
          backgroundColor: whiteColor, // Customize the color here
          centerTitle: true,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Please enter the 4-digit OTP sent to your phone.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Container(
                width: 200,
                child: Form(
                  key: _key,
                  child: CommonTextFormField(
                    controller: _otpController, // Store text ,_ : private
                    errorMessage: 'Enter Your OTP',
                    inputType: TextInputType.number,
                    label: 'Enter OTP',
                    formatter: [otpFormatter, mobileNumberFormater],
                    onTap: () {},
                    isOTPField: true,
                    autoFocus: true,
                  ),
                ),
              ),
              SizedBox(height: 20),
              CommonButton(
                  onPress: () async {
                    if (_key.currentState!.validate()) {
                      // _controller.verifyOtp();
                      Get.to(() => SignUpScreen(
                            mobileNumber: '',
                          ));
                    }
                  },
                  title: 'Send OTP')
            ],
          ),
        ),
      ),
    );
  }
}

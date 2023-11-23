import 'package:animaed/views/CheptorName_Screen.dart';
import 'package:animaed/views/Congratulation_Screen.dart';
import 'package:animaed/controller/otp_verification_controller.dart';
import 'package:animaed/utils/constants.dart';
import 'package:animaed/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionScreen extends StatelessWidget {
  final _key = GlobalKey<FormState>();
  final OTPController _controller = Get.put(OTPController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: purpleColor,
        centerTitle: true,
        elevation: 0,
        title: Column(
          children: [
            Text('Ch 1. Where does food come from?'),
            Text(
              'Question 2/15',
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: purpleColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
            ),
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Lassi paratha and mixed vegetables are staple food of which states?',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                OptionCard('A: Gujarat'),
                OptionCard('B: Maharastra'),
                OptionCard('C: Rajasthan'),
                OptionCard('D: Punjab'),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CommonButton(
          onPress: () async {
            // if (_key.currentState!.validate()) {
            //   _controller.verifyOtp();
            // }
            Get.to(CongratulationScreen());
          },
          title: 'Next'),
    );
  }
}

class OptionCard extends StatelessWidget {
  final String optionText;

  OptionCard(this.optionText);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(optionText),
        onTap: () {
          // Handle user selection here
          print('Selected: $optionText');
        },
      ),
    );
  }
}

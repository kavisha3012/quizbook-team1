import 'package:animaed/utils/constants.dart';
import 'package:animaed/widgets/common_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class CongratulationScreen extends StatelessWidget {
  CongratulationScreen({super.key});

  final TextStyle commonTextStyle = TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      body: Center(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Image.asset('assets/images/trophy.png', scale: 3.5),
              SizedBox(
                height: 20,
              ),
              Text(
                'Congratulation',
                style: commonTextStyle,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'You have completed successfully.',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 60,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: resultTrueColor,
                      ),
                      child: Text('10 correct  ')),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: resultFalseColor,
                      ),
                      child: Text('5 Incorrect  ')),
                ],
              ),
              CommonButton(
                onPress: () {},
                title: 'View the result',
              )
            ]),
      ),
    );
  }
}

import 'package:animaed/views/CheptorName_Screen.dart';
import 'package:animaed/views/Congratulation_Screen.dart';
import 'package:animaed/views/Otp_Screen.dart';
import 'package:animaed/views/SignUp_Screen.dart';
import 'package:animaed/views/Dashboard_Page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/Login_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: LoginScreen());
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 400,
              width: double.infinity,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/bg.png',
                    fit: BoxFit.fill,
                    height: 400,
                    width: double.infinity,
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 2,
                    bottom: 20,
                    child: Image.asset(
                      'assets/images/Logo.png',
                      fit: BoxFit.fill,
                      height: 100,
                      width: 100,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

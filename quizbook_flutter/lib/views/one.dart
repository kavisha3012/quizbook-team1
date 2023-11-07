import 'package:animaed/utils/constants.dart';
import 'package:animaed/widgets/common_appbar.dart';
import 'package:flutter/material.dart';

class OneScreen extends StatelessWidget {
  const OneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: CommonAppBarScreen(
            title: 'First Screen',
            backgroundColor: whiteColor, // Customize the color here
            centerTitle: true,
          )),
    );
  }
}

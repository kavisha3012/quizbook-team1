import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget {
  final String title;

  CommonAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
    );
  }
}

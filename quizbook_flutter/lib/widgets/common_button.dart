import 'package:flutter/material.dart';
import '../utils/constants.dart';

class CommonButton extends StatelessWidget {
  CommonButton(
      {super.key,
      required this.onPress,
      required this.title,
      this.isFullWidth = true});
  final VoidCallback onPress;
  final String title;
  final bool isFullWidth;
  final TextStyle buttonTextStyle = TextStyle(
    color: whiteColor,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.resolveWith((states) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(00),
                side: BorderSide(
                  color: Colors.white,
                  width: 1,
                ));
          }),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return purpleColor;
            }

            return purpleColor;
          }),
        ),
        onPressed: onPress,
        child: Text(
          title,
          style: buttonTextStyle,
        ));
  }
}

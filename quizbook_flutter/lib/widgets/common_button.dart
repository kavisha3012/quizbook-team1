import 'package:animaed/utils/constants.dart';
import 'package:flutter/material.dart';

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
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.resolveWith((states) {
            return EdgeInsets.all(15);
          }),
          alignment: Alignment.topCenter,
          shadowColor: MaterialStateProperty.resolveWith((states) {
            return Colors.red;
          }),
          animationDuration: Duration(milliseconds: 100),
          elevation: MaterialStateProperty.resolveWith((states) {
            return 16;
          }),
          shape: MaterialStateProperty.resolveWith((states) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(00),
                side: BorderSide(
                  color: Colors.white,
                  width: 1,
                ));
          }),
          minimumSize: MaterialStateProperty.resolveWith((states) {
            return Size(isFullWidth ? double.infinity : 350, 40);
          }),
          maximumSize: MaterialStateProperty.resolveWith((states) {
            return Size(double.infinity, 100);
          }),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return purpleColor;
            }

            return purpleColor;
          }),
          textStyle: MaterialStateProperty.resolveWith((states) {
            print('button state');

            if (states.contains(MaterialState.pressed)) {
              print('button is clickd');
            }

            final TextStyle normalStyle = TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600);

            final TextStyle buttonPressedStyle = TextStyle(
                color: Colors.red, fontSize: 18, fontWeight: FontWeight.w600);

            // If the button is pressed, return size 40, otherwise 20
            if (states.contains(MaterialState.pressed)) {
              print('button is pressed');

              return buttonPressedStyle;
            }
            return normalStyle;
          }),
        ),
        onPressed: onPress,
        child: Text(
          title,
          style: buttonTextStyle,
        ));
  }
}

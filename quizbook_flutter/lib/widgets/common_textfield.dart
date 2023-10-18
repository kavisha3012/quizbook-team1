import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utils/constants.dart';

class CommonTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final String prefixIcon;
  final String suffixIcon;
  final String label;
  final String errorMessage;
  final TextInputType inputType;
  final int length;
  final List<TextInputFormatter> formatter;
  CommonTextFormField(
      {super.key,
      required this.controller,
      required this.errorMessage,
      this.hint = '',
      this.prefixIcon = '',
      this.suffixIcon = '',
      required this.label,
      required this.inputType,
      required this.formatter,
      required this.length});

  final TextStyle labelStyle = TextStyle(
    fontSize: 14,
    color: Colors.grey,
    fontWeight: FontWeight.w500,
  );
  final TextStyle hintStyle = TextStyle(
    fontSize: 14,
    color: Colors.grey,
    fontWeight: FontWeight.w500,
  );
  final TextStyle textStyle = TextStyle(
    fontSize: 14,
    color: Colors.grey,
    fontWeight: FontWeight.w500,
  );
  final InputBorder border = UnderlineInputBorder(
      borderSide: const BorderSide(color: inputBorderColor, width: 0.0));
  final InputBorder errorBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: inputBorderColorError, width: 0.0));

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: length,
      style: textStyle,
      keyboardType: inputType,
      inputFormatters: formatter,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
        hintText: hint,
        hintStyle: hintStyle,
        label: Text(
          label,
          style: labelStyle,
        ),
        // hintText: 'Enter Yor UserName',
        errorBorder: errorBorder,
        focusedBorder: border,
        border: border,
        disabledBorder: border,
        focusedErrorBorder: errorBorder,
        enabledBorder: border,

        prefix: Text('+91'),
      ),
      validator: (newVal) {
        if (newVal!.isEmpty || newVal!.length < 10) {
          return errorMessage;
        }

        return null;
      },
    );
  }
}

import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/progress_indicator.dart';

class Utility {
  static String getRandomString({int length = 10}) {
    const chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    Random rnd = Random();
    return String.fromCharCodes(Iterable.generate(
        length, (_) => chars.codeUnitAt(rnd.nextInt(chars.length - 1))));
  }

  static void hideKeyboard() =>
      SystemChannels.textInput.invokeMethod('TextInput.hide');

  static LoadingProgressDialog showLoaderDialog(BuildContext context) {
    LoadingProgressDialog progressDialog = LoadingProgressDialog();
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return WillPopScope(
              onWillPop: () {
                return Future.value(false);
              },
              child: progressDialog);
        });
    return progressDialog;
  }

  static void hideDialog(BuildContext context) {
    Navigator.pop(context);
  }
}

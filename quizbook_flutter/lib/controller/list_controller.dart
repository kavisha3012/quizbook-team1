import 'dart:convert';

import 'package:animaed/controller/api1_controller.dart';
import 'package:animaed/models/api_responce.dart';
import 'package:animaed/models/standard_model.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  RxList<Standards> standards = RxList();
  DashboardController() {
    standards.value = Standards.getDummyData();
  }

  Future<void> getData() async {
    try {
      final ApiResponse response = await ApiController.get('');
      if (response != null && response.status == 200) {
        standards.value =
            Standards.fromJsonList(response.data as List<dynamic>);
        standards.refresh();
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

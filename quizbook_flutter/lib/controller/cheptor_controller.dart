import 'package:get/get.dart';

class ChapterController extends GetxController {
  final _currentIndex = 0.obs;

  int get currentIndex => _currentIndex.value;

  get items => null;

  void chnageindex(int index) {
    _currentIndex.value = index;
  }
}

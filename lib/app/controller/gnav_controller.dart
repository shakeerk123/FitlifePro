import 'package:get/get.dart';

class GnavController extends GetxController {
  var currentIndex = 0.obs;

  gnavvController(int initialIndex) {
    currentIndex.value = initialIndex;
  }

  void changeTabIndex(int index) {
    currentIndex.value = index;
  }
}

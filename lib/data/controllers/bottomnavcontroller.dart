import 'package:get/state_manager.dart';

class BottomNAvigationController extends GetxController {
  RxInt currentIndex = 0.obs;

  void changePageIndex(int index) {
    currentIndex.value = index;
  }
}

import 'package:get/get.dart';

import 'package:get/get.dart';

class NavbarController extends GetxController {
  var selectedPageIndex = 0.obs;

  void changePage(int index) {
    selectedPageIndex.value = index;
    Get.snackbar('Индекс', '$index');
  }
}

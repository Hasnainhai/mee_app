import 'package:get/get.dart';

class DasboardController extends GetxController {
  var tapIndex = 0;
  void changeTapController(int index) {
    tapIndex = index;
    update();
  }
}

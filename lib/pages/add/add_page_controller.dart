import 'package:get/get.dart';

class AddPageController extends GetxController {
  var count = 0.obs;
  increment() {
    count++;
  }
}

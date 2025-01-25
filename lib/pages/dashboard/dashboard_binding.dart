import 'package:get/get.dart';
import 'package:mee_app/pages/add/add_page_controller.dart';
import 'package:mee_app/pages/home/home_page_controller.dart';
import 'package:mee_app/pages/messages/message_controller.dart';

import 'dasboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DasboardController>(() => DasboardController());
    Get.lazyPut<HomePageController>(() => HomePageController());
    Get.lazyPut<AddPageController>(() => AddPageController());
    Get.lazyPut<MessageController>(() => MessageController());
  }
}

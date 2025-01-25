import 'package:get/get.dart';
import 'package:mee_app/model/user_model.dart';

import '../../services/user_services.dart';

class HomePageController extends GetxController {
  var isloading = false.obs;
  var userList = <UserData>[].obs;

  void fetchUserData() async {
    try {
      isloading.value = true;
      var userData = await UserServices().getUserData();
      userList.addAll(userData);
    } catch (e) {
      print(e);
    } finally {
      isloading.value = false;
    }
  }

  @override
  void onInit() {
    fetchUserData();
    super.onInit();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mee_app/pages/home/home_page_controller.dart';

class HomePage extends StatelessWidget {
  final HomePageController controller = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home page",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Obx(() {
        if (controller.isloading.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: controller.userList.length,
            itemBuilder: (context, index) {
              var userData = controller.userList[index];

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Text(userData.name),
                    subtitle: Text(userData.email),
                  ),
                ),
              );
            },
          );
        }
      }),
    );
  }
}

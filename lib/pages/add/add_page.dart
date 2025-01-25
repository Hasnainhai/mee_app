import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mee_app/pages/add/add_page_controller.dart';

class AddPage extends StatelessWidget {
  AddPage({Key? key}) : super(key: key);

  final AddPageController controller = Get.put(AddPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(controller.count.toString()),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Text("Increase"),
              onPressed: () => controller.increment(),
            ),
          ],
        ),
      ),
    );
    ;
  }
}

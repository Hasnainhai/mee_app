import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mee_app/pages/dashboard/dasboard_controller.dart';

import '../../navigation/custom_animated_bottom_bar.dart';
import '../add/add_page.dart';
import '../home/home_page.dart';
import '../messages/messages_page.dart';
import '../users/users_page.dart';

class MyDashBoard extends StatefulWidget {
  @override
  _MyDashBoardState createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {
  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DasboardController>(builder: (controller) {
      return Scaffold(
          body: SafeArea(
              child: IndexedStack(
            index: controller.tapIndex,
            children: [
              HomePage(),
              UsersPage(),
              MessagesPage(),
              AddPage(),
            ],
          )),
          bottomNavigationBar: CustomAnimatedBottomBar(
            containerHeight: 70,
            backgroundColor: Colors.white,
            selectedIndex: controller.tapIndex,
            showElevation: true,
            itemCornerRadius: 24,
            curve: Curves.easeIn,
            onItemSelected: controller.changeTapController,
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                icon: Icon(Icons.apps),
                title: Text('Home'),
                activeColor: Colors.green,
                inactiveColor: _inactiveColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.people),
                title: Text('Users'),
                activeColor: Colors.purpleAccent,
                inactiveColor: _inactiveColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.message),
                title: Text(
                  'Messages ',
                ),
                activeColor: Colors.pink,
                inactiveColor: _inactiveColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.settings),
                title: Text('Settings'),
                activeColor: Colors.blue,
                inactiveColor: _inactiveColor,
                textAlign: TextAlign.center,
              ),
            ],
          ));
    });
  }

  // Widget _buildBottomBar() {
  //   return
  // }

  // Widget getBody() {
  //   List<Widget> pages = [
  //     HomePage(),
  //     UsersPage(),
  //     MessagesPage(),
  //     AddPage(),
  //   ];
  //   return IndexedStack(
  //     index: _currentIndex,
  //     children: pages,
  //   );
  // }
}

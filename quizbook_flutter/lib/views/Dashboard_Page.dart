import 'package:animaed/utils/constants.dart';
import 'package:animaed/views/SignUp_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/dashboard_controller.dart';
import '../widgets/common_appbar.dart';
import 'CheptorName_Screen.dart';
import 'SeriesScreen.dart';

class DashboardScreen extends StatelessWidget {
  final DashBoardController _controller = Get.put(DashBoardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Obx(
            () => _controller.currentIndex.value == 2
                ? SizedBox.shrink()
                : CommonAppBarScreen(
                    title: _controller.getPageName(),
                    backgroundColor: whiteColor,
                    automaticallyImplyLeading:
                        _controller.currentIndex.value == 2,
                    isBackArrow: _controller.currentIndex.value == 2,
                  ),
          )),
      body: PageView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          controller: _controller.pageController,
          onPageChanged: (index) {
            print('page changed');
            _controller.onTabTapped(index);
          },
          itemBuilder: (_, index) {
            if (index == 0)
              return SeriesScreen();
            else if (index == 1)
              return ItemList();
            else
              return SignUpScreen(mobileNumber: '', isBackArrow: false);
          }),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue[800],
          showSelectedLabels: true,
          iconSize: 40,
          currentIndex: _controller.currentIndex.value,
          onTap: _controller.onTabTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                // color: Colors.grey,
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.watch_later_outlined,
                // color: Colors.grey,
              ),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                // color: Colors.grey,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:animaed/controller/list_controller.dart';
import 'package:animaed/utils/constants.dart';
import 'package:animaed/widgets/common_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DashboardScreen extends StatelessWidget {
  final DashboardController _controller = Get.put(DashboardController());
  final RxInt _currentIndex = 0.obs; // Use RxInt for reactive updates

  void onTabTapped(int index) {
    _currentIndex.value = index; // Update the RxInt value
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: CommonAppBarScreen(
            title: 'Standard',
            backgroundColor: whiteColor, // Customize the color here
            centerTitle: true,
          )),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Obx(
            () => ListView.separated(
                separatorBuilder: (_, index) => SizedBox(height: 30),
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: _controller.standards.length,
                itemBuilder: (_, index) {
                  return Container(
                    height: 170,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5.0,
                          ),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Standard ${_controller.standards.value[index].std}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.purple,
                                ),
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  'New',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Divider(
                            color: Colors.grey,
                            height: 1,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: ListView.separated(
                              separatorBuilder: (_, index1) => SizedBox(
                                    width: 20,
                                  ),
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemCount:
                                  _controller.standards[index].subject.length,
                              itemBuilder: (_, index1) {
                                return Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundImage: Image.network(
                                                _controller.standards[index]
                                                    .subject[index1].img!)
                                            .image,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        _controller.standards.value[index]
                                            .subject[index1].subjectName!,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ))
                      ],
                    ),
                  );
                }),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex.value,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: purpleColor),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: purpleColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: purpleColor,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

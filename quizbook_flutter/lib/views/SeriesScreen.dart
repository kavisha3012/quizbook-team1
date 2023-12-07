import 'package:animaed/views/CheptorName_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/series_controller.dart';

class SeriesScreen extends StatelessWidget {
  final SeriesController DashBoardController = Get.put(SeriesController());

  SeriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Obx(
        () => ListView.separated(
            separatorBuilder: (_, index) => SizedBox(height: 28),
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemCount: DashBoardController.standards.length,
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
                        blurRadius: 7.0,
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
                            'Standard ${DashBoardController.standards.value[index].std}',
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
                          itemCount: DashBoardController
                              .standards[index].subject.length,
                          itemBuilder: (_, index1) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => ItemList(),
                                          ),
                                        );
                                        print(
                                          'CircleAvatar Clicked',
                                        );
                                      },
                                    ),
                                    backgroundImage: Image.asset(
                                            DashBoardController.standards[index]
                                                .subject[index1].img!)
                                        .image,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    DashBoardController.standards.value[index]
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
    );
  }
}

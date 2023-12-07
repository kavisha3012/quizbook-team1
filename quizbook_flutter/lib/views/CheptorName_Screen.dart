import 'package:animaed/views/SeriesScreen.dart';
import 'package:animaed/views/SignUp_Screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controller/cheptor_controller.dart';

class CheptarNameScreen extends StatelessWidget {
  final ChapterController chapterController = Get.put(ChapterController());
  final _currentIndex = 0.obs;

  CheptarNameScreen({super.key});

  void onTabTapped(int index) {
    _currentIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Obx(() {
        return _currentIndex.value == 0
            ? SeriesScreen()
            : (_currentIndex.value == 1
                ? ItemList()
                : SignUpScreen(mobileNumber: ''));
      }),

      //ItemList(),
      // Display the selected screen
    ));
  }
}

class ItemList extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'logo_index': '01',
      'logo_image': 'images/normal_number_bg.png',
      'ch_name': 'Ch_1- Khorak kyathi mle che',
      'teacher_logo': 'images/Logo.png',
      'teacher_name': 'Abhishek Kumar',
      'question_no': 15,
      'min': 15,
    },
    {
      'logo_index': '02',
      'logo_image': 'images/normal_number_bg.png',
      'ch_name': 'Ch_2- Aahar na ghatko',
      'teacher_logo': 'images/Logo.png',
      'teacher_name': 'Abhishek Kumar',
      'question_no': 15,
      'min': 20,
    },

    {
      'logo_index': '03',
      'logo_image': 'images/normal_number_bg.png',
      'ch_name': 'Ch_3- Resa thi kapad Sudhi ',
      'teacher_logo': 'images/Logo.png',
      'teacher_name': 'Abhishek Kumar',
      'question_no': 15,
      'min': 20,
    },

    {
      'logo_index': '04',
      'logo_image': 'images/normal_number_bg.png',
      'ch_name': 'Ch_4- Aahar na ghatko',
      'teacher_logo': 'images/Logo.png',
      'teacher_name': 'Abhishek Kumar',
      'question_no': 15,
      'min': 20,
    },

    {
      'logo_index': '05',
      'logo_image': 'images/normal_number_bg.png',
      'ch_name': 'Ch_5- Aahar na ghatko',
      'teacher_logo': 'images/Logo.png',
      'teacher_name': 'Abhishek Kumar',
      'question_no': 15,
      'min': 20,
    },
    {
      'logo_index': '06',
      'logo_image': 'images/normal_number_bg.png',
      'ch_name': 'Ch_3- Resa thi kapad Sudhi ',
      'teacher_logo': 'images/Logo.png',
      'teacher_name': 'Abhishek Kumar',
      'question_no': 15,
      'min': 20,
    },

    {
      'logo_index': '07',
      'logo_image': 'images/normal_number_bg.png',
      'ch_name': 'Ch_3- Resa thi kapad Sudhi ',
      'teacher_logo': 'images/Logo.png',
      'teacher_name': 'Abhishek Kumar',
      'question_no': 15,
      'min': 20,
    },

    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];

        return CustomItem(
          logoIndex: item['logo_index'],
          logoImage: item['logo_image'],
          chName: item['ch_name'],
          teacherLogo: item['teacher_logo'],
          teacherName: item['teacher_name'],
          questionNo: item['question_no'],
          min: item['min'],
        );
      },
    );
  }
}

class CustomItem extends StatelessWidget {
  final String logoIndex;
  final String logoImage;
  final String chName;
  final String teacherLogo;
  final String teacherName;
  final int questionNo;
  final int min;

  CustomItem({
    required this.logoIndex,
    required this.logoImage,
    required this.chName,
    required this.teacherLogo,
    required this.teacherName,
    required this.questionNo,
    required this.min,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Color.fromARGB(255, 255, 255, 255),
        // color: Colors.white,
        elevation: 10,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(logoImage),
            child: Text(
              logoIndex,
              style: TextStyle(color: Colors.white),
            ),
          ),
          title: Text(
            chName,
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundImage: AssetImage(
                      teacherLogo,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(teacherName),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                      height: 17,
                      width: 20,
                      child: Image.asset('images/question_icon.png')),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Question No: $questionNo'),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 20,
                      width: 20,
                      child: Image.asset('images/time_icon.png')),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Min: $min'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

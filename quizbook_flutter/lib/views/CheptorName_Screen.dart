import 'package:animaed/controller/otp_verification_controller.dart';
import 'package:animaed/views/SignUp_Screen.dart';
import 'package:animaed/views/Question_Screen.dart';
import 'package:animaed/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheptarNameScreen extends StatefulWidget {
  @override
  State<CheptarNameScreen> createState() => _CheptarNameScreenState();
}

class _CheptarNameScreenState extends State<CheptarNameScreen> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('Science'),
      ),
      body: ItemList(),
      // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              color: Colors.pink,
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.pink,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.pink,
            ),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue[800],
        iconSize: 40,
      ),
    ));
  }
}

class ItemList extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'logo_index': '01',
      'logo_image': 'images/normal_number_bg.png',
      'ch_name': 'Ch_1- Khorak kyathi mle che',
      'teacher_logo': 'images/m.jpeg',
      'teacher_name': 'Shailendrasinh gohil',
      'question_no': 15,
      'min': 15,
    },
    {
      'logo_index': '02',
      'logo_image': 'images/number.png',
      'ch_name': 'Ch_2- Aahar na ghatko',
      'teacher_logo': 'images/bg.jpg',
      'teacher_name': 'Rakesh Patel',
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
                    radius: 15,
                    backgroundImage: AssetImage(teacherLogo),
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

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../models/api_stndard_model.dart';

class SeriesController extends GetxController {
  // Replace this with your actual data source or API call
  final standards = <StandardModel>[
    StandardModel(
      std: 1,
      subject: [
        SubjectModel(subjectName: 'Math', img: 'images/math.jpeg'),
        SubjectModel(subjectName: 'Science', img: 'images/science.png'),
        SubjectModel(subjectName: 'Gujarati', img: 'images/gujrati.png'),
        SubjectModel(subjectName: 'English', img: 'images/english.jpeg'),
      ],
    ),
    StandardModel(
      std: 2,
      subject: [
        SubjectModel(subjectName: 'Math', img: 'images/math.jpeg'),
        SubjectModel(subjectName: 'Science', img: 'images/science.png'),
        SubjectModel(subjectName: 'Gujarati', img: 'images/gujrati.png'),
        SubjectModel(subjectName: 'English', img: 'images/english.jpeg'),
      ],
    ),
    StandardModel(
      std: 3,
      subject: [
        SubjectModel(subjectName: 'Math', img: 'images/math.jpeg'),
        SubjectModel(subjectName: 'Science', img: 'images/science.png'),
        SubjectModel(subjectName: 'Gujarati', img: 'images/gujrati.png'),
        SubjectModel(subjectName: 'English', img: 'images/english.jpeg'),
      ],
    ),

    StandardModel(
      std: 4,
      subject: [
        SubjectModel(subjectName: 'Math', img: 'images/math.jpeg'),
        SubjectModel(subjectName: 'Science', img: 'images/science.png'),
        SubjectModel(subjectName: 'Gujarati', img: 'images/gujrati.png'),
        SubjectModel(subjectName: 'English', img: 'images/english.jpeg'),
      ],
    ),
    // Add more data as needed
  ].obs;
}

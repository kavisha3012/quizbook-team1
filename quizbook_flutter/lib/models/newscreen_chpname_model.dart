// class Item {
//   final String IndexId;
//   final String IndexIdImage;
//   final String chapterName;
//   final String teacherLogo;
//   final String teacherName;
//   final int questionNo;
//   final int minute;

//   Item({
//     required this.IndexId,
//     required this.IndexIdImage,
//     required this.chapterName,
//     required this.teacherLogo,
//     required this.teacherName,
//     required this.questionNo,
//     required this.minute,
//   });
// }

class ItemModel {
  final String logoIndex;
  final String logoImage;
  final String chName;
  final String teacherLogo;
  final String teacherName;
  final int questionNo;
  final int min;

  ItemModel({
    required this.logoIndex,
    required this.logoImage,
    required this.chName,
    required this.teacherLogo,
    required this.teacherName,
    required this.questionNo,
    required this.min,
  });
}

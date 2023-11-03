import 'dart:convert';

class Standards {
  late String sId;
  late String std;
  late List<Subject> subject = List.empty(growable: true);
  late int id;
  late int iV;

  Standards() {
    sId = '';
    std = '';
    id = 0;
    iV = 0;
  }

  Standards.fromJson(Map<String, dynamic> json) {
    sId = json['_id'] ?? '';
    std = json['std'];
    if (json['subject'] != null) {
      subject = <Subject>[];
      json['subject'].forEach((v) {
        subject!.add(new Subject.fromJson(v));
      });
    }
    id = json['id'];
    iV = json['__v'];
  }
  static List<Standards> fromJsonList(List<dynamic> row) {
    List<Standards> list = List.empty(growable: true);
    list = row.map((e) => Standards.fromJson(e)).toList();
    return list;
  }

  static List<Standards> getDummyData() {
    final dummyData1 = json.decode(json.encode({
      "status": 200,
      "data": [
        {
          "_id": "652fb25c5925f96d641917af",
          "std": "6",
          "subject": [
            {
              "subjectName": "maths",
              "img":
                  "https://www.freepik.com/free-vector/cartoon-math-concept-background_4473415.htm#query=math%20book&position=13&from_view=keyword&track=ais",
              "id": 1,
              "_id": "652fb25c5925f96d641917b0"
            },
            {
              "subjectName": "gujarati",
              "img":
                  "https://www.freepik.com/free-vector/cartoon-math-concept-background_4473415.htm#query=math%20book&position=13&from_view=keyword&track=ais",
              "id": 2,
              "_id": "652fb25c5925f96d641917b1"
            },
            {
              "subjectName": "english",
              "img":
                  "https://www.freepik.com/free-vector/cartoon-math-concept-background_4473415.htm#query=math%20book&position=13&from_view=keyword&track=ais",
              "id": 3,
              "_id": "652fb25c5925f96d641917b2"
            }
          ],
          "id": 1,
          "__v": 0
        },
        {
          "_id": "652fb25c5925f96d641917b4",
          "std": "7",
          "subject": [
            {
              "subjectName": "maths",
              "img":
                  "https://www.freepik.com/free-vector/cartoon-math-concept-background_4473415.htm#query=math%20book&position=13&from_view=keyword&track=ais",
              "id": 4,
              "_id": "652fb25c5925f96d641917b5"
            },
            {
              "subjectName": "gujarati",
              "img":
                  "https://www.freepik.com/free-vector/cartoon-math-concept-background_4473415.htm#query=math%20book&position=13&from_view=keyword&track=ais",
              "id": 5,
              "_id": "652fb25c5925f96d641917b6"
            },
            {
              "subjectName": "english",
              "img":
                  "https://www.freepik.com/free-vector/cartoon-math-concept-background_4473415.htm#query=math%20book&position=13&from_view=keyword&track=ais",
              "id": 6,
              "_id": "652fb25c5925f96d641917b7"
            }
          ],
          "id": 2,
          "__v": 0
        },
        {
          "_id": "652fb25c5925f96d641917b9",
          "std": "8",
          "subject": [
            {
              "subjectName": "maths",
              "img":
                  "https://www.freepik.com/free-vector/cartoon-math-concept-background_4473415.htm#query=math%20book&position=13&from_view=keyword&track=ais",
              "id": 7,
              "_id": "652fb25c5925f96d641917ba"
            },
            {
              "subjectName": "gujarati",
              "img":
                  "https://www.freepik.com/free-vector/cartoon-math-concept-background_4473415.htm#query=math%20book&position=13&from_view=keyword&track=ais",
              "id": 8,
              "_id": "652fb25c5925f96d641917bb"
            },
            {
              "subjectName": "english",
              "img":
                  "https://www.freepik.com/free-vector/cartoon-math-concept-background_4473415.htm#query=math%20book&position=13&from_view=keyword&track=ais",
              "id": 9,
              "_id": "652fb25c5925f96d641917bc"
            }
          ],
          "id": 3,
          "__v": 0
        },
        {
          "_id": "652fb25c5925f96d641917be",
          "std": "9",
          "subject": [
            {
              "subjectName": "maths",
              "img":
                  "https://www.freepik.com/free-vector/cartoon-math-concept-background_4473415.htm#query=math%20book&position=13&from_view=keyword&track=ais",
              "id": 10,
              "_id": "652fb25c5925f96d641917bf"
            },
            {
              "subjectName": "gujarati",
              "img":
                  "https://www.freepik.com/free-vector/cartoon-math-concept-background_4473415.htm#query=math%20book&position=13&from_view=keyword&track=ais",
              "id": 11,
              "_id": "652fb25c5925f96d641917c0"
            },
            {
              "subjectName": "english",
              "img":
                  "https://www.freepik.com/free-vector/cartoon-math-concept-background_4473415.htm#query=math%20book&position=13&from_view=keyword&track=ais",
              "id": 12,
              "_id": "652fb25c5925f96d641917c1"
            }
          ],
          "id": 4,
          "__v": 0
        },
        {
          "_id": "652fb25c5925f96d641917c3",
          "std": "10",
          "subject": [
            {
              "subjectName": "maths",
              "img":
                  "https://www.freepik.com/free-vector/cartoon-math-concept-background_4473415.htm#query=math%20book&position=13&from_view=keyword&track=ais",
              "id": 13,
              "_id": "652fb25c5925f96d641917c4"
            },
            {
              "subjectName": "gujarati",
              "img":
                  "https://www.freepik.com/free-vector/cartoon-math-concept-background_4473415.htm#query=math%20book&position=13&from_view=keyword&track=ais",
              "id": 14,
              "_id": "652fb25c5925f96d641917c5"
            },
            {
              "subjectName": "english",
              "img":
                  "https://www.freepik.com/free-vector/cartoon-math-concept-background_4473415.htm#query=math%20book&position=13&from_view=keyword&track=ais",
              "id": 15,
              "_id": "652fb25c5925f96d641917c6"
            }
          ],
          "id": 5,
          "__v": 0
        }
      ]
    }));
    List<Standards> list = List.empty(growable: true);

    for (int i = 0; i < dummyData1['data'].length; i++) {
      list.add(Standards.fromJson(dummyData1['data'][i]));
    }

    //  list = dummyData1['data'].map((e) => Standards.fromJson(e)).toList();
    return list;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['std'] = this.std;
    if (this.subject != null) {
      data['subject'] = this.subject!.map((v) => v.toJson()).toList();
    }
    data['id'] = this.id;
    data['__v'] = this.iV;
    return data;
  }
}

class Subject {
  String? subjectName;
  String? img;
  int? id;
  String? sId;
  Subject({this.subjectName, this.img, this.id, this.sId});
  Subject.fromJson(Map<String, dynamic> json) {
    subjectName = json['subjectName'];
    img = json['img'];
    id = json['id'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subjectName'] = this.subjectName;
    data['img'] = this.img;
    data['id'] = this.id;
    data['_id'] = this.sId;
    return data;
  }
}

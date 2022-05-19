import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Update {
  static var dio = Dio();
  static Future<int?> student(String name, String college, String rollno,
      String course, String duration, String address, String pincode) async {
    try {
      var userData = {
        'studentName': name,
        'nameOfCollege': college,
        'RollNo': rollno,
        'Course': course,
        'CourseDuration': duration,
        'address': address,
        'pincode': pincode
      };
      return (await dio.post(dotenv.env['BACKEND_URL']! + '/student/update',
              data: userData))
          .statusCode;
    } catch (e) {
      print(e);
    }
    return 0;
  }

  static Future<int?> advocate(String state, String district, String barCouncilNumber,
      String areaOfPractice, String specialization, String officeAddress, String pinCode) async {
    try {
      var userData = {
        'state': state,
        'district': district,
        'barCouncilNumber': barCouncilNumber,
        'areaOfPractice': areaOfPractice,
        'specialization': specialization,
        'officeAddress': officeAddress,
        'pinCode': pinCode,
      };
      return (await dio.post(dotenv.env['BACKEND_URL']! + '/advocate/update',
              data: userData))
          .statusCode;
    } catch (e) {
      print(e);
    }
    return 0;
  }
}

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Auth {
  static var dio = Dio();
  static Future<int?> registerUser(
      String email,
      String password,
      String confirmPassword,
      String securityQuestion,
      String securityAnswer,
      String userType) async {
    try {
      var userData = {
        'username': email,
        'password': password,
        'confirmPassword': confirmPassword,
        'securityQuestion': securityQuestion,
        'securityAnswer': securityAnswer,
        'userType': userType
      };
      return (await dio.post(dotenv.env['BACKEND_URL']! + '/auth/register',
              data: userData))
          .statusCode;
    } catch (e) {
      print(e);
    }
    return 0;
  }

  static Future<int?> loginUser(String email, String password) async {
    try {
      var response = await dio.post(dotenv.env['BACKEND_URL']! + '/auth/login',
          data: {'username': email, 'password': password});

      return response.statusCode;
    } catch (e) {
      print(e);
    }
    return 0;
  }

  static Future<int?> verifyOTP(String email, String otp) async {
    try {
      var response = await dio.post(
          dotenv.env['BACKEND_URL']! + '/auth/verifyOTP',
          data: {'username': email, 'otp': otp});
      return response.statusCode;
    } catch (e) {
      print(e);
    }
    return 0;
  }
}

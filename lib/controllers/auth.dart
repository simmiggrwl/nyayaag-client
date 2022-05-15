import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Auth {
  static var dio = Dio();
  static void registerUser(
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
      print(userData);
      var response =
          await dio.post(dotenv.env['BACKEND_URL']! + '/auth/register', data: {
        'username': email,
        'password': password,
        'confirmPassword': confirmPassword,
        'securityQuestion': securityQuestion,
        'securityAnswer': securityAnswer,
        'userType': userType
      });
      print(response);
      if (response.statusCode == 200) {
        print("registered bitches");
      }
    } catch (e) {
      print(e);
    }
  }

  static void loginUser(String email, String password) async {
    try {
      var userData = {'username': email, 'password': password};
      print(userData);
      var response = await dio.post(dotenv.env['BACKEND_URL']! + '/auth/login',
          data: {'username': email, 'password': password});
      print(response);
      if (response.statusCode == 200) {
        print("registered bitches");
      }
    } catch (e) {
      print(e);
    }
  }
}

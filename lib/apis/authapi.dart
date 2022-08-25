import 'dart:convert';

import 'package:food_delivery/const/user_cred.dart';
import 'package:http/http.dart' as http;

import '../const/consttant.dart';

class AuthApi {
  Future<dynamic> dologin({
    String password = "",
    String email = "",
  }) async {
    var client = http.Client();
    try {
      final response =
          await client.post(Uri.parse("${baseurl}login-delivery-boy"), body: {
        'password': password,
        'email': email,
      });
      if (response.statusCode == 200) {
        print(response.body);
        return jsonDecode(response.body) as Map;
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      print(e);
    } finally {
      client.close();
    }
  }

  Future<dynamic> dologout() async {
    var client = http.Client();
    try {
      final response = await client
          .post(Uri.parse("${baseurl}login-out-delivery-boy"), body: {
        'user_id': "${userCred.getUserId()}",
      });
      if (response.statusCode == 200) {
        print(response.body);
        return jsonDecode(response.body) as Map;
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      print(e);
    } finally {
      client.close();
    }
  }
}

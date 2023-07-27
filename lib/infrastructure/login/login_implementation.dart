import 'dart:convert';
import 'package:beegains_task/domain/login/login_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginAuth {
  static const String tokenKey = 'user_token';
  /*  static Future<String?> getToken({
    required String password,
    required String username,
  }) async {
    String baseUrl = 'http://143.110.181.12:7070/api/login';
    try {
      final url = Uri.parse(baseUrl);
      final response = await http
          .post(url, body: {'username': username, 'password': password});
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body)['data']['token'];
        return token;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception('error creating token: ');
    }
  }
 */

  static Future<LoginModel?> loginUser({
    required String password,
    required String username,
  }) async {
    String baseUrl = 'http://143.110.181.12:7070/api/login';
    try {
      final url = Uri.parse(baseUrl);
      final response = await http
          .post(url, body: {'username': username, 'password': password});
      if (response.statusCode == 200) {
        LoginModel data = LoginModel.fromJson(jsonDecode(response.body));
        storeTokenLocally(data.data.token);
        return data;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception('error creating token: $e ');
    }
  }

  static Future<void> storeTokenLocally(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(tokenKey, token);
  }

  static Future<String?> getTokenLocally() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getString(tokenKey);
  }

  static Future clearToken() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.clear();
  }
}

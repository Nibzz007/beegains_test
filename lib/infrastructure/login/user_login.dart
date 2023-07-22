import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class LoginAuth {
  Future<String> userLogin(String username, String password) async {
    String jwt = "";
    var response = await http.post(
      Uri.parse("https://prasanthpn.online/admin/login"),
      body: jsonEncode({"username": username, "password": password}),
    );
    var json;
    if (response.statusCode == 200) {
      json = jsonDecode(response.body);
      log(json['data'][0]);
    } else {
      log(json.toString());
    }
    return json['data'][0];
  }
}

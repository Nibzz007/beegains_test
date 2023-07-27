import 'dart:convert';
import 'dart:developer';
import 'package:beegains_task/domain/enquiry%20list/enquiry_list_model.dart';
import 'package:beegains_task/infrastructure/login/login_implementation.dart';
import 'package:http/http.dart' as http;

Future<EnquiryListModel?> getEnquiryList() async {
  String baseUrl =
      'http://143.110.181.12:7070/api/get_enquiries?page=1&franchise_id=2&search=""&from_date=""&to_date=""&est_status=""&jobcards=0';
  try {
    String? token = await LoginAuth.getTokenLocally();
    final url = Uri.parse(baseUrl);
    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $token',
      },
    );
    if (response.statusCode == 200) {
      EnquiryListModel data =
          EnquiryListModel.fromJson(jsonDecode(response.body));
      return data;
    } else {
      return null;
    }
  } catch (e) {
    throw Exception("$e");
  }
}

class EnquiryList {
  static Future<EnquiryListModel?> getList() async {
    String baseUrl =
        'http://143.110.181.12:7070/api/get_enquiries?page=1&franchise_id=2&search=""&from_date=""&to_date=""&est_status=""&jobcards=0';
    try {
      String? token = await LoginAuth.getTokenLocally();
      http.Response response = await http.get(
        Uri.parse(baseUrl),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );
      log(response.body);
      if(response.statusCode == 200){
        EnquiryListModel data = EnquiryListModel.fromJson(jsonDecode(response.body));
        return data;
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}

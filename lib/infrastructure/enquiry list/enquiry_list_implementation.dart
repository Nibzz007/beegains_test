import 'package:beegains_task/infrastructure/login/login_implementation.dart';
import 'package:http/http.dart' as http;

class EnquiryAuth {
  Future<void> getEnquiryList() async {
    String baseUrl =
        'http://143.110.181.12:7070/api/get_enquiries?page=1&franchise_id=2&search=""&from_date=""&to_date=""&est_status=""&jobcards=0';
    try {
      String? token = await LoginAuth.getToken(password: '', username: '');
      final url = Uri.parse(baseUrl);
      final response = await http.get(
        url,
        headers: {
          'Authorization': 'Bearer $token',
        },
      );
      if(response.statusCode == 200) {
        final data = response.body;
      }
    } catch (e) {}
  }
}

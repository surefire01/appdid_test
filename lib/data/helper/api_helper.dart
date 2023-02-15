import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiHelper {
  Future get(String url) async {
    final uri = Uri.parse("http://$url");

    final res = await http.get(uri);

    if (res.statusCode == 200) {
      print(res.body);
      return jsonDecode(res.body);
    } else {
      throw Exception("error occured while fetching the api");
    }
  }
}

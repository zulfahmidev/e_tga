import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class API {
  String domain = 'http://192.168.219.33:8000/api';

  post(String route, Map body) {
    Uri url = Uri.parse(domain + route);
    return http.post(url, body: body);
  }
}

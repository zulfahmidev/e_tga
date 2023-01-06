import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Store {
  setString(key, value) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  get(key) async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.get(key);
  }
}

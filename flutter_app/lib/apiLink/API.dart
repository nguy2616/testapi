import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "https://us-central1-sepm-ooptionsfood.cloudfunctions.net";

class API {
  static Future getFoods() {
    var url = baseUrl + "/food";
    return http.get(url);
  }
  static Future getRestaurants() {
    var url = baseUrl + "/restaurant";
    return http.get(url);
  }
}
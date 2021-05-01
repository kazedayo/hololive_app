import 'dart:convert';

import 'package:hololive_app/models/live_api_response/live_api_response.dart';
import 'package:http/http.dart' as http;

class HolotoolsApi {
  static final String baseUrl = "api.holotools.app";

  static Future<LiveApiResponse> getLive() async {
    final params = {
      "max_upcoming_hours": 2190,
      "hide_channel_desc": 1,
    };
    final url = Uri.https(baseUrl, "v1/live", params);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return LiveApiResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('fetch live list failed');
    }
  }
}

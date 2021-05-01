import 'dart:convert';

import 'package:hololive_app/models/live_api_response/live_api_response.dart';
import 'package:http/http.dart' as http;

class HolotoolsApi {
  final String baseUrl = "https://api.holotools.app";

  Future<LiveApiResponse> getLive() async {
    Uri url = Uri.parse(
        "$baseUrl/v1/live?max_upcoming_hours=2190&hide_channel_desc=1");
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      return LiveApiResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('fetch live list failed');
    }
  }
}

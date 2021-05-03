import 'dart:convert';

import 'package:hololive_app/bloc/home_page_bloc.dart';
import 'package:hololive_app/models/live_api_response/live_api_response.dart';
import 'package:http/http.dart' as http;

class HolotoolsApi {
  final String baseUrl = "https://api.holotools.app";

  Future<LiveApiResponse> getLive({required UpcomingFilter filter}) async {
    int filterHours;
    switch (filter) {
      case UpcomingFilter.hour:
        filterHours = 1;
        break;
      case UpcomingFilter.day:
        filterHours = 24;
        break;
      case UpcomingFilter.week:
        filterHours = 168;
    }
    final Uri url = Uri.parse(
        "$baseUrl/v1/live?max_upcoming_hours=$filterHours&hide_channel_desc=1");
    final http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      return LiveApiResponse.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    } else {
      throw Exception('fetch live list failed');
    }
  }
}

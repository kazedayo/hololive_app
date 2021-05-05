import 'dart:convert';

import 'package:flutter/foundation.dart';
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
      final LiveApiResponse apiResponse =
          await compute(apiResponseFromJson, response.body);
      return apiResponse;
    } else {
      throw Exception('fetch live list failed');
    }
  }
}

LiveApiResponse apiResponseFromJson(String jsonString) =>
    LiveApiResponse.fromJson(jsonDecode(jsonString) as Map<String, dynamic>);

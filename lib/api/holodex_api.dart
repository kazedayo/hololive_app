import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hololive_app/bloc/home_page_bloc.dart';
import 'package:hololive_app/models/stream_video_item/stream_video_item.dart';
import 'package:http/http.dart' as http;

class HolotoolsApi {
  final String baseUrl = "https://holodex.net/api";
  final String apiKey = dotenv.get('HOLODEX_API_KEY');

  Future<List<StreamVideoItem>> getLive(
      {required UpcomingFilter filter}) async {
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
        "$baseUrl/v2/live?max_upcoming_hours=$filterHours&org=Hololive");
    final http.Response response = await http.get(url, headers: {
      "X-APIKEY": apiKey,
    });
    if (response.statusCode == 200) {
      final List<StreamVideoItem> apiResponse =
          await compute(apiResponseFromJson, response.body);
      return apiResponse;
    } else {
      throw Exception('fetch live list failed');
    }
  }
}

List<StreamVideoItem> apiResponseFromJson(String jsonString) =>
    (json.decode(jsonString) as List<dynamic>)
        .map((e) => StreamVideoItem.fromJson(e as Map<String, dynamic>))
        .toList();

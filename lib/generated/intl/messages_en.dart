// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(time) => "Live ${time}";

  static String m1(time) => "Started ${time}";

  static String m2(channel, streamTitle) =>
      "${channel}\'s stream ${streamTitle} is starting now!";

  static String m3(number) => "${number} watching";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "copyright": MessageLookupByLibrary.simpleMessage("Licences"),
        "getNotified": MessageLookupByLibrary.simpleMessage("Get Notified"),
        "goingLive": MessageLookupByLibrary.simpleMessage("Going Live"),
        "justStarted": MessageLookupByLibrary.simpleMessage("Just Started"),
        "live": MessageLookupByLibrary.simpleMessage("Live Now"),
        "liveIn": m0,
        "liveTime": m1,
        "networkError": MessageLookupByLibrary.simpleMessage(
            "Can\'t fetch data from network!"),
        "nextHour": MessageLookupByLibrary.simpleMessage("Next Hour"),
        "noScheduledStream": MessageLookupByLibrary.simpleMessage(
            "No Scheduled Streams_(:3 」∠)_"),
        "notiOn": MessageLookupByLibrary.simpleMessage("Notification On"),
        "retry": MessageLookupByLibrary.simpleMessage("Retry"),
        "source": MessageLookupByLibrary.simpleMessage("Source Code"),
        "streamStartNoti": m2,
        "streamStartNotiTilte":
            MessageLookupByLibrary.simpleMessage("🔴 Stream starting!!"),
        "thisWeek": MessageLookupByLibrary.simpleMessage("This Week"),
        "today": MessageLookupByLibrary.simpleMessage("Today"),
        "upcoming": MessageLookupByLibrary.simpleMessage("Upcoming Streams"),
        "watching": m3
      };
}

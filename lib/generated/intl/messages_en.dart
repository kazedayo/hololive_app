// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(time) => "Live ${time}";

  static String m1(time) => "Started ${time}";

  static String m2(number) => "${number} watching";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "goingLive": MessageLookupByLibrary.simpleMessage("Going Live"),
        "justStarted": MessageLookupByLibrary.simpleMessage("justStarted"),
        "live": MessageLookupByLibrary.simpleMessage("Live Now"),
        "liveIn": m0,
        "liveTime": m1,
        "nextHour": MessageLookupByLibrary.simpleMessage("Next Hour"),
        "noScheduledStream": MessageLookupByLibrary.simpleMessage(
            "No Scheduled Streams_(:3 」∠)_"),
        "thisWeek": MessageLookupByLibrary.simpleMessage("This Week"),
        "today": MessageLookupByLibrary.simpleMessage("Today"),
        "upcoming": MessageLookupByLibrary.simpleMessage("Upcoming Streams"),
        "watching": m2
      };
}

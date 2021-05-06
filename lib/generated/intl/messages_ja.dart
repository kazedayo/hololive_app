// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ja locale. All the
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
  String get localeName => 'ja';

  static String m0(time) => "${time}配信予定";

  static String m1(time) => "${time}始まった";

  static String m2(channel, streamTitle) =>
      "${channel}の配信${streamTitle}が始まります!";

  static String m3(number) => "${number}人観ている";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "copyright": MessageLookupByLibrary.simpleMessage("ライセンス"),
        "getNotified": MessageLookupByLibrary.simpleMessage("通知を受け取る"),
        "goingLive": MessageLookupByLibrary.simpleMessage("もうすぐ"),
        "justStarted": MessageLookupByLibrary.simpleMessage("始まったところ"),
        "live": MessageLookupByLibrary.simpleMessage("配信中"),
        "liveIn": m0,
        "liveTime": m1,
        "nextHour": MessageLookupByLibrary.simpleMessage("一時間"),
        "noScheduledStream":
            MessageLookupByLibrary.simpleMessage("配信予定がない_(:3 」∠)_"),
        "notiOn": MessageLookupByLibrary.simpleMessage("通知オン"),
        "source": MessageLookupByLibrary.simpleMessage("ソースコード"),
        "streamStartNoti": m2,
        "streamStartNotiTilte": MessageLookupByLibrary.simpleMessage("配信開始!!"),
        "thisWeek": MessageLookupByLibrary.simpleMessage("今週"),
        "today": MessageLookupByLibrary.simpleMessage("今日"),
        "upcoming": MessageLookupByLibrary.simpleMessage("しばらくの配信"),
        "watching": m3
      };
}

// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_TW locale. All the
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
  String get localeName => 'zh_TW';

  static String m0(time) => "${time}開始";

  static String m1(time) => "${time}開始";

  static String m2(channel, streamTitle) => "${channel}的直播${streamTitle}快要開始了!";

  static String m3(number) => "${number}人正在觀看";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "copyright": MessageLookupByLibrary.simpleMessage("授權資訊"),
        "getNotified": MessageLookupByLibrary.simpleMessage("取得通知"),
        "goingLive": MessageLookupByLibrary.simpleMessage("準備開始"),
        "justStarted": MessageLookupByLibrary.simpleMessage("剛剛開始"),
        "live": MessageLookupByLibrary.simpleMessage("正在直播"),
        "liveIn": m0,
        "liveTime": m1,
        "nextHour": MessageLookupByLibrary.simpleMessage("一小時內"),
        "noScheduledStream":
            MessageLookupByLibrary.simpleMessage("沒有即將開始的直播_(:3 」∠)_"),
        "notiOn": MessageLookupByLibrary.simpleMessage("已打開通知"),
        "source": MessageLookupByLibrary.simpleMessage("查看源代碼"),
        "streamStartNoti": m2,
        "streamStartNotiTilte":
            MessageLookupByLibrary.simpleMessage("直播要開始了!!"),
        "thisWeek": MessageLookupByLibrary.simpleMessage("這個星期"),
        "today": MessageLookupByLibrary.simpleMessage("今日"),
        "upcoming": MessageLookupByLibrary.simpleMessage("即將開始的直播"),
        "watching": m3
      };
}

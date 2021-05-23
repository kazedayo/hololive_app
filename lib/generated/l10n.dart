// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Live Now`
  String get live {
    return Intl.message(
      'Live Now',
      name: 'live',
      desc: '',
      args: [],
    );
  }

  /// `Just Started`
  String get justStarted {
    return Intl.message(
      'Just Started',
      name: 'justStarted',
      desc: '',
      args: [],
    );
  }

  /// `Started {time}`
  String liveTime(Object time) {
    return Intl.message(
      'Started $time',
      name: 'liveTime',
      desc: '',
      args: [time],
    );
  }

  /// `Upcoming Streams`
  String get upcoming {
    return Intl.message(
      'Upcoming Streams',
      name: 'upcoming',
      desc: '',
      args: [],
    );
  }

  /// `Next Hour`
  String get nextHour {
    return Intl.message(
      'Next Hour',
      name: 'nextHour',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `This Week`
  String get thisWeek {
    return Intl.message(
      'This Week',
      name: 'thisWeek',
      desc: '',
      args: [],
    );
  }

  /// `Going Live`
  String get goingLive {
    return Intl.message(
      'Going Live',
      name: 'goingLive',
      desc: '',
      args: [],
    );
  }

  /// `Live {time}`
  String liveIn(Object time) {
    return Intl.message(
      'Live $time',
      name: 'liveIn',
      desc: '',
      args: [time],
    );
  }

  /// `No Scheduled Streams_(:3 」∠)_`
  String get noScheduledStream {
    return Intl.message(
      'No Scheduled Streams_(:3 」∠)_',
      name: 'noScheduledStream',
      desc: '',
      args: [],
    );
  }

  /// `{number} watching`
  String watching(Object number) {
    return Intl.message(
      '$number watching',
      name: 'watching',
      desc: '',
      args: [number],
    );
  }

  /// `🔴 Stream starting!!`
  String get streamStartNotiTilte {
    return Intl.message(
      '🔴 Stream starting!!',
      name: 'streamStartNotiTilte',
      desc: '',
      args: [],
    );
  }

  /// `{channel}'s stream {streamTitle} is starting now!`
  String streamStartNoti(Object channel, Object streamTitle) {
    return Intl.message(
      '$channel\'s stream $streamTitle is starting now!',
      name: 'streamStartNoti',
      desc: '',
      args: [channel, streamTitle],
    );
  }

  /// `Get Notified`
  String get getNotified {
    return Intl.message(
      'Get Notified',
      name: 'getNotified',
      desc: '',
      args: [],
    );
  }

  /// `Notification On`
  String get notiOn {
    return Intl.message(
      'Notification On',
      name: 'notiOn',
      desc: '',
      args: [],
    );
  }

  /// `Licences`
  String get copyright {
    return Intl.message(
      'Licences',
      name: 'copyright',
      desc: '',
      args: [],
    );
  }

  /// `Source Code`
  String get source {
    return Intl.message(
      'Source Code',
      name: 'source',
      desc: '',
      args: [],
    );
  }

  /// `Can't fetch data from network!`
  String get networkError {
    return Intl.message(
      'Can\'t fetch data from network!',
      name: 'networkError',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ja'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

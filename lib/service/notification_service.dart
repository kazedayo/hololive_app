import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hololive_app/generated/l10n.dart';
import 'package:hololive_app/models/stream_video_item/stream_video_item.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationService {
  //create a Singleton
  static final NotificationService _notificationService =
      NotificationService._internal();

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  factory NotificationService() => _notificationService;

  NotificationService._internal();

  static const channelId = "holoScheduleNotificationChannel";
  static const appName = "HoloSchedule";
  static const channelDescription = "HoloSchedule Notification";

  static const AndroidNotificationDetails androidNotificationDetails =
      AndroidNotificationDetails(channelId, appName, channelDescription,
          styleInformation: BigTextStyleInformation(''));
  static const IOSNotificationDetails iosNotificationDetails =
      IOSNotificationDetails(threadIdentifier: channelId);
  static const NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails, iOS: iosNotificationDetails);

  Future<void> init() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    final IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings(
      onDidReceiveLocalNotification: onDidReceiveLocalNotification,
    );

    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    tz.initializeTimeZones();

    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: selectNotification);
  }

  void showNotification({required StreamVideoItem item}) async {
    await flutterLocalNotificationsPlugin.show(
        item.hashCode,
        S.current.streamStartNotiTilte,
        S.current.streamStartNoti(item.channel.name, item.title),
        notificationDetails);
  }

  void scheduleNotification({required StreamVideoItem item}) async {
    final DateTime now = DateTime.now();
    final DateTime streamStart = item.live_schedule!;
    final Duration difference = now.isAfter(streamStart)
        ? now.difference(streamStart)
        : streamStart.difference(now);

    _wasApplicationLaunchedFromNotification().then((value) {
      if (value != null) {
        if (!value && difference.inSeconds == 0) {
          showNotification(item: item);
        }
      }
    });

    await flutterLocalNotificationsPlugin.zonedSchedule(
      item.hashCode,
      S.current.streamStartNotiTilte,
      S.current.streamStartNoti(item.channel.name, item.title),
      tz.TZDateTime.now(tz.local).add(difference),
      notificationDetails,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
    );
  }

  void cancelScheduledNotification({required StreamVideoItem item}) {
    flutterLocalNotificationsPlugin.cancel(item.hashCode);
  }

  Future selectNotification(String? payload) async {
    //Handle notification tapped logic here
  }

  Future onDidReceiveLocalNotification(
      int id, String? title, String? body, String? payload) async {}

  Future<bool?> _wasApplicationLaunchedFromNotification() async {
    final NotificationAppLaunchDetails? notificationAppLaunchDetails =
        await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();

    return notificationAppLaunchDetails?.didNotificationLaunchApp;
  }
}

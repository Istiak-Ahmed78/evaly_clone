import 'package:evaly_clone/utils/connectivity/network_status_service.dart';
import 'package:evaly_clone/utils/theme_pref.dart';
import 'package:evaly_clone/views/screens/nav_bar/nav_bar.dart';
import 'package:evaly_clone/views/screens/network_awer_widget/netwok_awer_widget.dart';
import 'package:evaly_clone/views/screens/no_connection_screen/no_connection_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide StreamProvider;
import 'package:overlay_support/overlay_support.dart';
import 'package:provider/provider.dart' hide Consumer;
import 'package:shared_preferences/shared_preferences.dart';
import 'state_management/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
late AndroidNotificationChannel channel;

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print("Handling a background message: ${message.messageId}");
}

FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  channel = const AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    'This channel is used for important notifications.', // description
    importance: Importance.high,
  );
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  final sharedPreference = await SharedPreferences.getInstance();
  runApp(ProviderScope(overrides: [
    sharedPreferencesProvider.overrideWithValue(sharedPreference),
  ], child: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    FirebaseMessaging.instance.getInitialMessage().then((message) {
      print(message?.notification?.body);
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              channel.description,
              // TODO add a proper drawable resource to android, for now using
              //      one that already exists in example app.
              icon: 'launch_background',
            ),
          ),
        );
        String navigateTo = message.data['screen'];
        print('App recieved: navigate to $navigateTo');
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print(
          'A new onMessageOpenedApp event was published!.Message body is ${message.notification?.body}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: Consumer(
        builder: (context, watch, _) {
          return MaterialApp(
            title: 'Flutter Demo',
            // navigatorKey: ,
            debugShowCheckedModeBanner: false,
            theme: watch(appThemeStateProvider),
            home: StreamProvider<NetWorkStatus>(
                initialData: NetWorkStatus.offline,
                create: (context) =>
                    NetworkStatusServices().networkStatusController.stream,
                child: NetwoekAwerWidget(
                    onlineWidget: NavBarPage(),
                    offlineWidget: NoConnectionScreen())),
          );
        },
      ),
    );
  }
}

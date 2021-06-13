import 'package:evaly_clone/models/push_notification.dart';
import 'package:evaly_clone/utils/connectivity/network_status_service.dart';
import 'package:evaly_clone/utils/theme_pref.dart';
import 'package:evaly_clone/views/screens/network_awer_widget/netwok_awer_widget.dart';
import 'package:evaly_clone/views/screens/no_connection_screen/no_connection_screen.dart';
import 'package:evaly_clone/views/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide StreamProvider;
import 'package:overlay_support/overlay_support.dart';
import 'package:provider/provider.dart' hide Consumer;
import 'package:shared_preferences/shared_preferences.dart';
import 'state_management/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:evaly_clone/views/screens/notification_budget/notification_budget.dart';
import 'views/screens/notification_budget/notification_budget.dart';

late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print("Handling a background message: ${message.messageId}");
}

// AndroidNotificationChannel channel;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
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
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: Consumer(
        builder: (context, watch, _) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: watch(appThemeStateProvider),
            home: StreamProvider<NetWorkStatus>(
                initialData: NetWorkStatus.offline,
                create: (context) =>
                    NetworkStatusServices().networkStatusController.stream,
                child: NetwoekAwerWidget(
                    onlineWidget: SpleshScreen(),
                    offlineWidget: NoConnectionScreen())),
          );
        },
      ),
    );
  }
}

import 'package:evaly_clone/utils/connectivity/network_status_service.dart';
import 'package:evaly_clone/utils/theme_pref.dart';
import 'package:evaly_clone/views/screens/network_awer_widget/netwok_awer_widget.dart';
import 'package:evaly_clone/views/screens/no_connection_screen/no_connection_screen.dart';
import 'package:evaly_clone/views/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide StreamProvider;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'state_management/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreference = await SharedPreferences.getInstance();
  runApp(ProviderScope(overrides: [
    sharedPreferencesProvider.overrideWithValue(sharedPreference),
  ], child: MyApp()));
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader reader) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: reader(appThemeStateProvider),
      home: StreamProvider<NetWorkStatus>(
          initialData: NetWorkStatus.offline,
          create: (context) =>
              NetworkStatusServices().networkStatusController.stream,
          child: NetwoekAwerWidget(
              onlineWidget: SpleshScreen(),
              offlineWidget: NoConnectionScreen())),
    );
  }
}

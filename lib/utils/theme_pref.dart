import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constants.dart';

class ThemePreference {
  final SharedPreferences sharedPreferences;

  ThemePreference({required this.sharedPreferences});
  bool isDarkModeEnabled() => sharedPreferences.getBool(isDarkModeKey) ?? false;
  void setMode(bool isDarkMode) {
    sharedPreferences.setBool(isDarkModeKey, isDarkMode);
  }
}

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

final themePreferenceProvider = Provider<ThemePreference>((ref) =>
    ThemePreference(sharedPreferences: ref.read(sharedPreferencesProvider)));

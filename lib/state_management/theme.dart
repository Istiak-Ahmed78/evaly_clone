import 'package:evaly_clone/state_management/radio_mode.dart';
import 'package:evaly_clone/utils/theme_pref.dart';
import 'package:evaly_clone/views/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeState extends StateNotifier<ThemeData> {
  ThemeState() : super(lightTheme);
  getCurrentTheme(BuildContext context) {
    state = getTheme(context.read(themePreferenceProvider).isDarkModeEnabled());
    context
        .read(radioModeProvider.notifier)
        .changeValue(state == lightTheme ? 1 : 0);
  }

  ThemeData getTheme(bool isDarkMode) => isDarkMode ? darkMode : lightTheme;
  togolModeValue(BuildContext context) {
    final _isDarkModeEnabled =
        context.read(themePreferenceProvider).isDarkModeEnabled();
    context.read(themePreferenceProvider).setMode(!_isDarkModeEnabled);
    print('Is dark mode: $_isDarkModeEnabled');
    state = getTheme(!_isDarkModeEnabled);
  }
}

final lightTheme = ThemeData.light().copyWith(
    primaryColor: kLightPrimaryColor,
    backgroundColor: kWhite,
    highlightColor: kGrey,
    canvasColor: kSoLightBlack,
    brightness: Brightness.light,
    secondaryHeaderColor: kBlack,
    focusColor: kWhite,
    iconTheme: IconThemeData(color: kBlack),
    textTheme: TextTheme(
        subtitle1: TextStyle(color: kWhite),
        button: TextStyle(
          color: kWhite,
          fontWeight: FontWeight.bold,
        ),
        bodyText1: TextStyle(fontWeight: FontWeight.bold),
        bodyText2: TextStyle(color: kBlack)));

ThemeData darkMode = ThemeData.dark().copyWith(
    backgroundColor: kDarkBackGround,
    primaryColor: kDarkPrimaryColor,
    focusColor: kBlack,
    secondaryHeaderColor: kWhite,
    brightness: Brightness.dark,
    canvasColor: kLightGrey,
    iconTheme: IconThemeData(color: kWhite),
    textTheme: TextTheme(
        subtitle1: TextStyle(color: kGrey),
        button: TextStyle(
          color: kWhite,
          fontWeight: FontWeight.bold,
        ),
        bodyText1: TextStyle(fontWeight: FontWeight.bold),
        bodyText2: TextStyle(color: kWhite)));

final appThemeStateProvider =
    StateNotifierProvider<ThemeState, ThemeData>((ref) => ThemeState());

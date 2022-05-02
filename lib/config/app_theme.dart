import 'package:flutter/material.dart';
import 'package:initialproject/core/constants/app_colors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    // fontFamily: 'Lato',
    brightness: Brightness.light,
    backgroundColor: colorBackground,
    primaryColor: colorPrimary,
    // colorScheme: ThemeData().colorScheme.copyWith(secondary: colorAccent),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0xFF4F4F4F),
          letterSpacing: 4),
      color: Colors.white,
      // systemOverlayStyle: SystemUiOverlayStyle(
      //   statusBarBrightness: Brightness.light,
      //   statusBarColor: Colors.white,
      // ),
    ),
    cardTheme: const CardTheme(elevation: 8.0),
    tabBarTheme: TabBarTheme(
        unselectedLabelColor: colorPrimary,
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        labelStyle: const TextStyle(fontWeight: FontWeight.bold),
        indicator: BoxDecoration(
          border: Border.all(),
          color: colorPrimary,
        )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: colorPrimary,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedIconTheme: IconThemeData(color: colorPrimary),
        unselectedIconTheme: IconThemeData(color: colorLightGrey),
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.black)),

    inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(
          color: Color(0xFFBDBDBD),
          fontSize: 16.0,
          fontWeight: FontWeight.w400),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: colorBorder, width: 1),
          borderRadius: BorderRadius.circular(8)),
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: colorBorder, width: 1),
          borderRadius: BorderRadius.circular(8)),
      border: OutlineInputBorder(
          borderSide: const BorderSide(color: colorBorder, width: 1),
          borderRadius: BorderRadius.circular(8)),
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: colorBorder, width: 1),
          borderRadius: BorderRadius.circular(8)),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: colorBorder, width: 1),
          borderRadius: BorderRadius.circular(8)),
      disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: colorBorder, width: 1),
          borderRadius: BorderRadius.circular(8)),
    ),

    // scaffoldBackgroundColor: buttonBgColor,
    textTheme: const TextTheme(
      headline3: TextStyle(
          fontSize: 46,
          color: Colors.white,
          letterSpacing: -2.0,
          fontWeight: FontWeight.w300),
      headline6: TextStyle(
        color: Color(0xFF3B3B3B),
      ),
      subtitle1:
          TextStyle(color: Color(0xFF009698), fontWeight: FontWeight.bold),
      // subtitle2: TextStyle(color: Colors.blue),
      // bodyText1: TextStyle(color: Color(0xFF6E7C7C)),
      // bodyText2: TextStyle(color: (Color(0xFF6E7C7C))),
      subtitle2: TextStyle(color: Color(0xFFF3F3F3), fontSize: 14.0),
      headline2: TextStyle(),
      headline4: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w600, color: Color(0xFF191919)),
      headline5: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.white),
  );
}

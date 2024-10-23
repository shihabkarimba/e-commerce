import 'package:flutter/material.dart';

final themeData = ThemeData(
  scaffoldBackgroundColor: const Color(0xFF1A2530),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF1A2530),
    foregroundColor: Colors.white,
  ),
  navigationBarTheme: const NavigationBarThemeData(
    backgroundColor: Color(0xFF161F28),
  ),
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF1A2530),
    onPrimary: Color(0xFF707B81),
    secondary: Color(0xFF5b9ee1),
    onSecondary: Color(0xFF161F28),
    error: Color(0xFFc73232),
    onError: Color(0xFFc73232),
    surface: Color(0xFF1A2530),
    onSurface: Color(0xFF1A2530),
  ),
  fontFamily: 'Poppins',
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Color(0xFF5b9ee1)),
        foregroundColor: WidgetStatePropertyAll(Colors.white),
        shape: WidgetStatePropertyAll(StadiumBorder())),
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: Colors.white,
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: Colors.white,
  ),
  tabBarTheme: const TabBarTheme(
    indicator: ShapeDecoration(
      shape: StadiumBorder(),
      color: Color(0xFF5b9ee1),
    ),
    unselectedLabelStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        height: 1.5),
    labelStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        height: 1.5),
    dividerColor: Colors.transparent,
    labelPadding: EdgeInsets.symmetric(vertical: 8),
    indicatorSize: TabBarIndicatorSize.tab,
    splashFactory: NoSplash.splashFactory,
  ),
  inputDecorationTheme: InputDecorationTheme(
    alignLabelWithHint: true,
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent, width: 0.5),
      borderRadius: BorderRadius.circular(30),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent, width: 1.5),
        borderRadius: BorderRadius.circular(30)),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(color: Colors.red),
    ),
    filled: true,
    fillColor: const Color(0xFF161F28),
    labelStyle: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
    ),
    floatingLabelStyle: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
    ),
    hintStyle: const TextStyle(
      color: Colors.white24,
      fontWeight: FontWeight.w400,
    ),
  ),
  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(Colors.white),
        shape: WidgetStatePropertyAll(StadiumBorder())),
  ),
  textTheme: const TextTheme(
    /* headline1 */
    headlineLarge: TextStyle(
        fontSize: 40.0,
        fontWeight: FontWeight.w600,
        color: Colors.white,
        height: 1.5),
    /* headline2 */
    headlineMedium: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        height: 1.5),
    /* headline3 */
    headlineSmall: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: Colors.white,
        height: 1.5),
    /* title1 */
    displayLarge: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        height: 1.5),
    /* title2  */
    displayMedium: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: Colors.white,
        height: 1.5),
    /* title3 */
    displaySmall: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        height: 1.5),
    /* subtitle1 */
    titleLarge: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        height: 1.5),
    /* subtitle2 */
    titleMedium: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w700,
        color: Colors.white,
        height: 1.5),
    /* subtitle3 */
    titleSmall: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        height: 1.5),
    /* label1 */
    labelLarge: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        color: Colors.white,
        height: 1.5),
    /* label2 */
    labelMedium: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w600,
        color: Colors.white,
        height: 1.5),
    /* label3 */
    labelSmall: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w100,
        color: Colors.white,
        height: 1.5,
        letterSpacing: 0.5),
    /* bodytext1 */
    bodyLarge: TextStyle(
        fontSize: 11.0,
        fontWeight: FontWeight.w400,
        color: Colors.white,
        height: 1.5),
    /* bodytext2 */
    bodyMedium: TextStyle(
        fontSize: 10.0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        height: 1.5),
    /* caption */
    bodySmall: TextStyle(
        fontSize: 10.0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        height: 1.5),
  ),
);

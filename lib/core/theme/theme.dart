import 'package:flutter/material.dart';

import 'colors.dart';


class AppTheme {
  AppTheme._();

  static String fontFamily = 'Nanum Myeongjo';

  static ThemeData theme = ThemeData(
    primaryColor: ColorsManager.primaryColor,
    fontFamily: fontFamily,
    scaffoldBackgroundColor: ColorsManager.backgroundColor,
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
        )),
    appBarTheme: const AppBarTheme(elevation: 0, backgroundColor: ColorsManager.mainColor),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: ColorsManager.mainColor,
      selectionColor: ColorsManager.mainColor.withOpacity(.45),
      selectionHandleColor: ColorsManager.mainColor,
    ),
    splashFactory: NoSplash.splashFactory,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 55),
        backgroundColor: ColorsManager.mainColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 0,
        splashFactory: NoSplash.splashFactory,
      ),
    ),
    cardTheme: const CardTheme(elevation: 0),
    colorScheme: const ColorScheme.light(primary: ColorsManager.mainColor, onPrimary: ColorsManager.primaryColor),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    useMaterial3: true,
  );
}

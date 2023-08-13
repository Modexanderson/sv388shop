import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class AppTheme {
  static ThemeData lightTheme({
    required BuildContext context,
  }) {
    return ThemeData(
      textSelectionTheme: TextSelectionThemeData(
        selectionHandleColor: Colors.blue,
        cursorColor: Colors.blue,
        selectionColor: Colors.blue,
      ),
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 1.5, color: Colors.blue),
        ),
      ),
      listTileTheme: ListTileThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.0),
        ),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.blue,
      ),
      cardTheme: CardTheme(
        clipBehavior: Clip.antiAlias,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.0),
        ),
      ),
      disabledColor: Colors.grey[600],
      brightness: Brightness.light,
      indicatorColor: Colors.blue,
      progressIndicatorTheme:
          const ProgressIndicatorThemeData().copyWith(color: Colors.blue),
      iconTheme: IconThemeData(
        color: Colors.grey[800],
        opacity: 1.0,
        size: 24.0,
      ),
      colorScheme: Theme.of(context).colorScheme.copyWith(
            primary: Colors.grey[800],
            brightness: Brightness.light,
            secondary: Colors.blue,
          ),
    );
  }

  static ThemeData darkTheme({
    required BuildContext context,
  }) {
    return ThemeData(
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        selectionHandleColor: Colors.blue,
        cursorColor: Colors.blue,
        selectionColor: Colors.blue,
      ),
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 1.5, color: Colors.blue),
        ),
      ),
      listTileTheme: ListTileThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.0),
        ),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.dark,
      // appBarTheme: AppBarTheme(
      //   color: Colors.blue,
      //   foregroundColor: Colors.white,
      // ),
      cardTheme: CardTheme(
        clipBehavior: Clip.antiAlias,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.0),
        ),
      ),
      progressIndicatorTheme:
          const ProgressIndicatorThemeData().copyWith(color: Colors.blue),
      iconTheme: const IconThemeData(
        color: Colors.white,
        opacity: 1.0,
        size: 24.0,
      ),
      indicatorColor: Colors.blue,
      colorScheme: Theme.of(context).colorScheme.copyWith(
            primary: Colors.white,
            secondary: Colors.blue,
            brightness: Brightness.dark,
          ),
    );
  }
}

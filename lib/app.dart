import 'package:flutter/material.dart';
import 'package:sv388shop/home_screen.dart';
import 'package:sv388shop/test.dart';

import 'app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sv388 Shop',
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme(
        context: context,
      ),
      darkTheme: AppTheme.darkTheme(
        context: context,
      ),
      home: HomeScreen(),
    );
  }
}

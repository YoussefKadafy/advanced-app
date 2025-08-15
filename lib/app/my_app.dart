import 'package:flutter/material.dart';
import 'package:new_app/presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp._instance();
  static final MyApp instance = MyApp._instance();
  factory MyApp() => instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: getAppTheme());
  }
}

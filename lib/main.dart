import 'package:flutter/material.dart';
import 'package:uiassignment/loadpage.dart';

import 'login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const SplashScreenPage(),
    );
  }
}

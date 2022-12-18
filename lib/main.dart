import 'package:flutter/material.dart';
import '.././pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(0x00098aa6),
          backgroundColor: const Color(0x00000000),
          primaryTextTheme: const TextTheme(
              titleMedium: TextStyle(color: Color(0xFFFFFFFF)))),
      home: const MyCustomSplashScreen(),
      // Other app settings...
    );
  }
}

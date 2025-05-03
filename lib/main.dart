import 'package:flutter/material.dart';
import 'package:okapi_zando_mobile/pages/login/loginPage.dart';

void main() {
  runApp(const MyApp());
}

// co

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Signup(),
    );
  }
}
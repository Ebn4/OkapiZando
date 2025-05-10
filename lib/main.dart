import 'package:flutter/material.dart';
import 'package:okapi_zando_mobile/pages/acceuil/acceuilPage.dart';
import 'package:okapi_zando_mobile/pages/widgets/accueil.dart';
import 'package:okapi_zando_mobile/userProfile/profilePage.dart';
void main() {
  runApp(const MyApp());
}

// co

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Okapi Zando',
      // home: Signup(),
      home: AcceuilPage(),
    );
  }
}
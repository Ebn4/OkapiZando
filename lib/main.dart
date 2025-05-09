import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:okapi_zando_mobile/pages/widgets/accueil.dart';
import 'package:okapi_zando_mobile/pages/widgets/singinOrginup.dart';
=======

import 'package:okapi_zando_mobile/pages/widgets/accueil.dart';

>>>>>>> e3f12af9be308fa106bcfe0063c31d28579bc461


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
      home: Accueil(),
    );
  }
}
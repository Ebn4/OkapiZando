import 'dart:async';

import 'package:flutter/material.dart';
import 'package:okapi_zando_mobile/pages/acceuil/acceuilPage.dart';



class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {

  @override
  void initState() {
   
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AcceuilPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image plein écran
          SizedBox.expand(
            child: Image.asset(
              'assets/images/accueil.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          // Barre de chargement légèrement en bas du centre
          Align(
            alignment: Alignment(0.0, 0.6), // Y = 0.6 → un peu en bas
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              strokeWidth: 5.0,
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

// Page de profil (stateless = pas de changement d'état)
class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barre supérieure avec le titre centré
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),

      
    );
  }
}

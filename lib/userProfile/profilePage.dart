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

      // Corps de la page
      body: Container(
        // Prend toute la hauteur de l'écran
        height: MediaQuery.of(context).size.height,
        // Un peu d'espace en bas (peut être utile pour éviter le chevauchement avec la barre système)
        padding: EdgeInsets.only(bottom: 50),

        // Colonne principale de la page
        child: Column(
          mainAxisSize: MainAxisSize.max,
          // Espace les éléments verticalement (haut, milieu, bas)
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            // En-tête avec fond bleu et informations de profil
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70), // bord arrondi en bas à gauche
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Stack pour afficher la photo de profil avec icône d’édition
                  Stack(
                    children: [
                      // Cercle contenant l’image de profil
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.blue, width: 2.0),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/fraise.jpg', // image du profil
                            fit: BoxFit.cover,
                            width: 200,
                            height: 200,
                          ),
                        ),
                      ),

                      // Petit bouton d’édition en bas à droite du cercle
                      Positioned(
                        bottom: 4,
                        right: 10,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                            border: Border.all(color: Colors.white, width: 1),
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 30),

                  // Nom de l’utilisateur
                  Text(
                    'Albert forbes',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20
                    ),
                  ),

                  SizedBox(height: 5),

                  // Rôle de l’utilisateur
                  Text(
                    'vendeur',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(height: 60),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Liste d’options : modifier profil, notifications, adresse, mot de passe
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  // Ligne : Modifier le profil
                  Row(
                    children: [
                      // Icône dans un cercle bleu
                      SizedBox(
                        width: 50,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      // Texte
                      Expanded(
                        child: Text(
                          'Modifier le profil',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      // Flèche de navigation
                      SizedBox(width: 30, child: Icon(Icons.navigate_next)),
                    ],
                  ),

                  SizedBox(height: 15),

                  // Ligne : Notification
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.notifications_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Notification',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 30, child: Icon(Icons.navigate_next)),
                    ],
                  ),

                  SizedBox(height: 15),

                  // Ligne : Adresse de livraison
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.edit_location_rounded,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Adresse de livraison',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 30, child: Icon(Icons.navigate_next)),
                    ],
                  ),

                  SizedBox(height: 15),

                  // Ligne : Changer mot de passe
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.lock_outline,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Changer mot de passe',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 30, child: Icon(Icons.navigate_next)),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            // Bouton de déconnexion
            SizedBox(
              width: 300,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  // Action à effectuer lors de la déconnexion
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.navigate_next),
                    SizedBox(width: 8),
                    Text(
                      'Deconnection',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

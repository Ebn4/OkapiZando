import 'package:flutter/material.dart';
import 'package:okapi_zando_mobile/pages/userProfile/profilePage.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isDarkMode = false;
  String _selectedLanguage = "Français";

  void _changeLanguage() {
    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            title: const Text("Choisir la langue"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: const Text("Français"),
                  onTap: () {
                    setState(() {
                      _selectedLanguage = "Français";
                    });
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text("English"),
                  onTap: () {
                    setState(() {
                      _selectedLanguage = "English";
                    });
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
    );
  }

  void _confirmLogout() {
    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            title: const Text("Déconnexion"),
            content: const Text("Êtes-vous sûr de vouloir vous déconnecter ?"),
            actions: [
              TextButton(
                child: const Text("Annuler"),
                onPressed: () => Navigator.pop(context),
              ),
              ElevatedButton(
                child: const Text("Déconnexion"),
                onPressed: () {
                  Navigator.pop(context);
                  // Ajouter ici la logique de déconnexion
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(const SnackBar(content: Text("Déconnecté")));
                },
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Paramètres")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Premier Card : Informations utilisateur
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/images/fraise.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Deuxième Card : Préférences et actions
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  SwitchListTile(
                    secondary: const Icon(Icons.dark_mode),
                    title: const Text("Mode sombre"),
                    value: _isDarkMode,
                    onChanged: (val) {
                      setState(() {
                        _isDarkMode = val;
                      });
                      // Logique pour changer le thème ici
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.language),
                    title: const Text("Langue"),
                    subtitle: Text(_selectedLanguage),
                    onTap: _changeLanguage,
                  ),
                  ListTile(
                    leading: const Icon(Icons.help),
                    title: const Text("Aide & support"),
                    onTap: () {
                      // Naviguer vers la page d'aide
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text("Déconnexion"),
                    onTap: _confirmLogout,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Exemple simple de page de profil

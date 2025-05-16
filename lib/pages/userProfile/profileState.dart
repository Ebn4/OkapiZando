import 'package:okapi_zando_mobile/business/models/user.dart';

class ProfileState {
  bool? isLoading; // Indicateur de chargement
  String? errorMsg; // Message d'erreur
  User? user;   // Utilisateur connecté  
  bool? showErrorPopup; // Indicateur pour afficher la popup d'erreur


  // Constructeur de la classe ProfileState
  ProfileState({
    this.isLoading,
    this.errorMsg,
    this.user,
    this.showErrorPopup,
  });

  // La methode qui permet de créer une copie de l'objet ProfileState
  ProfileState copyWith({
    bool? isLoading,
    String? errorMsg,
    User? user,
    bool? showErrorPopup,
  }) {
    return ProfileState(
      isLoading: isLoading ?? this.isLoading,
      errorMsg: errorMsg ?? this.errorMsg,
      user: user ?? this.user,
      showErrorPopup: showErrorPopup ?? this.showErrorPopup,
    );
  }
}

import 'package:okapi_zando_mobile/business/models/user.dart';

abstract class ZandoLocalService {
  /// Sauvegarde l'utilisateur dans le stockage local.
  /// Cette méthode prend un objet [User] en paramètre
  /// et retourne un [Future<void>].
  /// Elle est utilisée pour stocker les informations de l'utilisateur
  /// après une connexion réussie ou
  Future<void> sauvegarderUser(User user);

  
}

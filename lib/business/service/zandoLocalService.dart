import 'package:okapi_zando_mobile/business/models/user.dart';

abstract class ZandoLocalService {
  /// Sauvegarde l'utilisateur dans le stockage local.
  /// Cette méthode prend un objet [User] en paramètre
  /// et retourne un [Future<void>].
  /// Elle est utilisée pour stocker les informations de l'utilisateur
  /// après une connexion réussie ou
  Future<void> sauvegarderUser(User user);

  /// Récupère l'utilisateur depuis le stockage local.
  /// Cette méthode retourne un [Future<User?>],
  /// qui peut être un objet [User] ou `null` si aucun utilisateur n'est
  /// trouvé dans le stockage local.
  Future<User?> recupererUser();

  /// Supprime l'utilisateur du stockage local.
  /// Cette méthode retourne un [Future<void>].
  /// Elle est utilisée pour effacer les informations de l'utilisateur
  /// lors de la déconnexion ou de la suppression du compte.
  Future<void> supprimerUser();
}

import 'package:okapi_zando_mobile/business/models/authentification.dart';
import 'package:okapi_zando_mobile/business/models/register.dart';
import 'package:okapi_zando_mobile/business/models/user.dart';

abstract class ZandoNetworkService {
  Future<User?> authentificateUser(Authentification data);
  Future<List<User>> getUsers();
  
  // la methode pour l'inscription
  // elle prend en parametre un objet Register
  // et retourne un Future<void> pour indiquer que l'inscription est asynchrone
  Future<void> registerUser(Register data);
}

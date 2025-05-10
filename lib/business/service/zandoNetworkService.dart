import 'package:okapi_zando_mobile/business/models/authentification.dart';
import 'package:okapi_zando_mobile/business/models/user.dart';

abstract class ZandoNetworkService {
  Future<User?> AuthenticateUser(Authentification data);
}
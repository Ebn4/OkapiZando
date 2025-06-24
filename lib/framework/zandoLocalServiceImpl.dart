import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:okapi_zando_mobile/business/models/user.dart';
import 'package:okapi_zando_mobile/business/service/zandoLocalService.dart';

class ZandoLocalServiceImpl implements ZandoLocalService {
  // Initialisation de GetStorage
  GetStorage box;


  // Constructeur de la classe ZandoLocalServiceImpl
  // Il prend en paramètre une instance de GetStorage
  // et l'assigne à la variable box.
  ZandoLocalServiceImpl({required this.box});

  @override
  Future<User?> recupererUser() async{
    // Récupération de l'utilisateur depuis le stockage local
    // en utilisant GetStorage.
    // Si l'utilisateur n'est pas trouvé, retourne null.
    var userData = box.read('user');
    if (userData == null) {
      return null;
    }
    return User.fromJson(userData);
  }

  @override
  Future<void> sauvegarderUser(User user) async{
    var data = user.toJson();
    // Sauvegarde de l'utilisateur dans le stockage local
    await box.write('user', jsonEncode(data));
  }

  @override
  Future<void> supprimerUser() {
    // TODO: implement supprimerUser
    throw UnimplementedError();
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okapi_zando_mobile/business/models/authentification.dart';
import 'package:okapi_zando_mobile/business/service/zandoNetworkService.dart';
import 'package:okapi_zando_mobile/main.dart';
import 'package:okapi_zando_mobile/pages/login/loginState.dart';

class LoginController extends StateNotifier<LoginState> {
  var network = getIt.get<ZandoNetworkService>();
  LoginController() : super(LoginState()) {}

  // La methode pour valider le formulaire de connexion
  Future<bool> submitForm(Authentification data) async {
    state = state.copywith(isLoading: true);
    try {
      var user = await network.authentificateUser(data);
      state = state.copywith(isLoading: false, user: user);
      return true;
    } catch (e) {
      state = state.copywith(
        isLoading: false,
        errorMsg: "Une erreur est survenue",
      );
      return false;
    }
  }
}

final loginProvider = StateNotifierProvider<LoginController, LoginState>((ref) {
  return LoginController();
});

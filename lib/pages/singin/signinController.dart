import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okapi_zando_mobile/business/models/register.dart';
import 'package:okapi_zando_mobile/business/service/zandoLocalService.dart';
import 'package:okapi_zando_mobile/business/service/zandoNetworkService.dart';
import 'package:okapi_zando_mobile/main.dart';
import 'package:okapi_zando_mobile/pages/singin/signinState.dart';

class SigninController extends StateNotifier<SigninState> {
  // on recupere le service de zandoNetworkService
  var networkService = getIt.get<ZandoNetworkService>();

  // on recupere le service de zandoLocalService
  var localService = getIt.get<ZandoLocalService>();

  SigninController() : super(SigninState());

  Future<bool> submitForm(Register data) async {
    state = state.copyWith(isLoading: true);
    try {
      var user = await networkService.registerUser(data);
      state = state.copyWith(isLoading: false, user: user);
      return true;
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMsg: "Une erreur est survenue",
      );
      return false;
    }
  }

  // la methode pour sauvegarder l'utilisateur dans le local
  Future<void> saveUser() async {
    state = state.copyWith(isLoading: true);
    try {
      if (state.user != null) {
        await localService.sauvegarderUser(state.user!);
      }
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMsg: "Une erreur est survenue lors de la sauvegarde",
      );
    }
  }
}

final signinProvider = StateNotifierProvider<SigninController, SigninState>((
  ref,
) {
  return SigninController();
});

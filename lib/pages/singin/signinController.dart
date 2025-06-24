import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okapi_zando_mobile/business/models/register.dart';
import 'package:okapi_zando_mobile/business/service/zandoNetworkService.dart';
import 'package:okapi_zando_mobile/main.dart';
import 'package:okapi_zando_mobile/pages/singin/signinState.dart';

class SigninController extends StateNotifier<SigninState> {
  var networkService = getIt.get<ZandoNetworkService>();

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
}

final signinProvider = StateNotifierProvider<SigninController, SigninState>((ref) {
  return SigninController();
});
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okapi_zando_mobile/business/models/authentification.dart';
import 'package:okapi_zando_mobile/pages/userProfile/profileState.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Profilecontroller extends StateNotifier<ProfileState> {
  Profilecontroller() : super(ProfileState());

  Future<bool> submitForm(Authentification data) async{
    state = state.copyWith(isLoading: true);
    try {
      // Appel de la méthode AuthenticateUser
      // var user = await service.AuthenticateUser(data);
      // state = state.copyWith(user: user, isLoading: false);
      return true;

    } catch (e) {
      state = state.copyWith(errorMsg: e.toString(), isLoading: false);
      return false;
    }
  }
}


// Provider pour le Profilecontroller
// Le provider est utilisé pour créer une instance de Profilecontroller
final loginProvider = StateNotifierProvider<Profilecontroller, ProfileState>(
  (ref) => Profilecontroller(),
);
import 'package:okapi_zando_mobile/business/models/user.dart';

class LoginState {
  bool? isLoading;
  String? errorMsg;
  User? user;

  // le constructeur
  LoginState({this.isLoading, this.errorMsg, this.user});

  LoginState copywith({bool? isLoading, String? errorMsg, User? user}) {
    return LoginState(
      isLoading: isLoading ?? this.isLoading,
      errorMsg: errorMsg ?? this.errorMsg,
      user: user ?? this.user
    );
  }
}

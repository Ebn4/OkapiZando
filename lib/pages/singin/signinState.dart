import 'package:okapi_zando_mobile/business/models/user.dart';

class SigninState {
  final bool? isLoading;
  final String? errorMsg;
  final User? user;

  SigninState({
    this.isLoading,
    this.errorMsg,
    this.user,
  });

  SigninState copyWith({
    bool? isLoading,
    String? errorMsg,
    User? user,
  }) {
    return SigninState(
      isLoading: isLoading ?? this.isLoading,
      errorMsg: errorMsg ?? this.errorMsg,
      user: user ?? this.user,
    );
  }


}
import 'package:okapi_zando_mobile/business/models/user.dart';

class ProfileState {
  bool? isLoading;
  String? errorMsg;
  User? user;

  ProfileState({
    this.isLoading,
    this.errorMsg,
    this.user,
  });

  ProfileState copyWith({
    bool? isLoading,
    String? errorMsg,
    User? user,
  }) {
    return ProfileState(
      isLoading: isLoading ?? this.isLoading,
      errorMsg: errorMsg ?? this.errorMsg,
      user: user ?? this.user,
    );
  }
}

class Register {
  final String name;
  final String email;
  final String password;
  final String confirmPassword;

  Register({
    required this.name,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });

  factory Register.fromJson(Map<String, dynamic> json) {
    return Register(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      confirmPassword: json['confirmPassword'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'confirmPassword': confirmPassword,
    };
  }
}
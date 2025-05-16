class Authentification {
    String? email;
    String? password;

    Authentification({
        this.email,
        this.password,
    });

    factory Authentification.fromJson(Map<String, dynamic> json) {
        return Authentification(
            email: json['email'],
            password: json['password'],
        );
    }

    Map<String,dynamic> toJson(){
        return {
            "email" : email,
            "password" : password
        };
    }
}

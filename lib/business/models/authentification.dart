class Authentification {
    String? email;
    String? password;

    Authentification({
        this.email,
        this.password,
    });

    Authentification copyWith({
        String? email,
        String? password,
    }) => 
        Authentification(
            email: email ?? this.email,
            password: password ?? this.password,
        );
}

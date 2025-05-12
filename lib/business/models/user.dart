class User {
  int id;
  String name;
  String email;


  // Le constructeur de la classe User
  User({
    required this.id,
    required this.name,
    required this.email,
  });
 

  // La methode toJson permet de convertir un objet User en JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }


  // La methode fromJson permet de créer un objet User à partir d'un JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  } 

}


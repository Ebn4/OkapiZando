class User {
  int id;
  String name;
  String email;
  String phone;


  // Le constructeur de la classe User
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
  });
 

  // La methode toJson permet de convertir un objet User en JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
    };
  }


  // La methode fromJson permet de créer un objet User à partir d'un JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
    );
  } 

}


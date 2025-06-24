import 'dart:convert';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:okapi_zando_mobile/business/models/article.dart';
import 'package:okapi_zando_mobile/business/models/authentification.dart';
import 'package:okapi_zando_mobile/business/models/register.dart';
import 'package:okapi_zando_mobile/business/models/user.dart';
import 'package:okapi_zando_mobile/business/service/zandoNetworkService.dart';
import 'package:http/http.dart' as http;

class Zandonetworkserviceimpl implements ZandoNetworkService {
  // le chargement du fichier .env qui contient l'url de l'api
  //final String baseUrl = dotenv.env['API_BASE_URL'] ?? '';

  // final String baseUrl = "${dotenv.env['API_BASE_URL']}";

  // le chargement de l'url de l'api
  final String baseUrl = "http://127.0.0.1:8000/api";

  // la methode AuthenticateUser permet d'authentifier un utilisateur
  // en envoyant une requete POST à l'api avec les données de l'utilisateur
  @override
  Future<User?> authentificateUser(Authentification data) async {
    var userData = jsonEncode(data);
    var url = Uri.parse('$baseUrl/login');

    // Envoi de la requete POST à l'api
    // avec les données de l'utilisateur
    // et les headers de la requete
    var response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: userData,
    );
    // Vérification du code de statut de la reponse
    var StatusCode = [200, 201];
    print("Le status code de la connexion ${response.statusCode}");
    var codes = [200, 201];
    var resultat = jsonDecode(response.body) as Map;

    if (!codes.contains(response.statusCode)) {
      var error = resultat["error"];
      throw Exception(error);
    }
    var user = User.fromJson(resultat["data"]);
    return user;
  }

  @override
  Future<List<User>> getUsers() async {
    var url = Uri.parse('$baseUrl/users');
    var response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      var resultat = jsonDecode(response.body) as List;
      return resultat.map((e) => User.fromJson(e)).toList();
    } else {
      throw Exception("Failed to load users");
    }
  }

  @override
  Future<User> registerUser(Register data) async {
    var url = Uri.parse('$baseUrl/register');
    var userData = jsonEncode(data);
    var response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: userData,
    );
    if (response.statusCode == 201) {
      var resultat = jsonDecode(response.body) as Map;
      print("User registered successfully: ${resultat['message']}");
      return User.fromJson(resultat["data"]);
    } else {
      var error = jsonDecode(response.body) as Map;
      throw Exception("Failed to register user: ${error['error']}");
    }
  }
}

void main() async {
  var service = Zandonetworkserviceimpl();
  // var auth = Authentification(email: "test@gmail.com", password: "password");
  // var data = await service.authentificateUser(auth);
  // print(data?.name);
  var users = await service.getUsers();
  print(users);
}

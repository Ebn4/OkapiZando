import 'package:flutter/material.dart';
import 'package:okapi_zando_mobile/business/service/zandoNetworkService.dart';
import 'package:okapi_zando_mobile/framework/zandoNetworkServiceImpl.dart';
import 'package:okapi_zando_mobile/pages/acceuil/acceuilPage.dart';
import 'package:okapi_zando_mobile/pages/detailProduit/detailProduitPage.dart';
import 'package:okapi_zando_mobile/pages/widgets/accueil.dart';
import 'package:okapi_zando_mobile/pages/widgets/introductionPage.dart';
import 'package:okapi_zando_mobile/pages/userProfile/profilePage.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getIt = GetIt.instance;

void setup(){
  getIt.registerLazySingleton<ZandoNetworkService>(() {
    return Zandonetworkserviceimpl();
  });
}

void main() async{
  await dotenv.load(); // Charge le fichier .env
  runApp(ProviderScope(child: MyApp()));
}

// co

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Okapi Zando',
      // home: Signup(),
      home: Detailproduitpage(),
    );
  }
}
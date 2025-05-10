import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:okapi_zando_mobile/pages/acceuil/acceuilPage.dart';

class Introductionpage extends StatefulWidget {
  const Introductionpage({super.key});

  @override
  State<Introductionpage> createState() => _IntroductionpageState();
}

class _IntroductionpageState extends State<Introductionpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Bienvenue sur Okapi Zando",
            body:
                "Votre marché digital pour acheter et vendre facilement toutes sortes de produits à Kinshasa.",
            image: Center(
              child: Image.asset(
                "assets/images/woman-scooter-transporting-dark.png",
                height: 175.0,
              ),
            ),
            decoration: const PageDecoration(
              pageColor: Color.fromARGB(255, 10, 100, 173),
              titleTextStyle: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              bodyTextStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),

          PageViewModel(
            title: "Trouvez tout ce qu’il vous faut",
            body:
                "Explorez une grande variété d’articles : vêtements, téléphones, électroménagers, accessoires, et bien plus.",
            image: Center(
              child: Image.asset(
                "assets/images/woman-shopping-chart-dark.png",
                height: 175.0,
              ),
            ),
            decoration: const PageDecoration(
              pageColor: Color.fromARGB(255, 180, 109, 3),
              titleTextStyle: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              bodyTextStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),

          PageViewModel(
            title: "Mettez vos produits en vente",
            body:
                "Ajoutez des photos, une description et fixez un prix. Vendez rapidement à des clients proches de vous.",
            image: Center(
              child: Image.asset(
                "assets/images/man-credit-card-dark.png",
                height: 175.0,
              ),
            ),
            decoration: const PageDecoration(
              pageColor: Color.fromARGB(255, 2, 116, 104),
              titleTextStyle: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              bodyTextStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
        showSkipButton: true,
        skip: const Icon(Icons.navigate_before),
        next: const Text("Suivant",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        done: const Text("Suivant", style: TextStyle(fontWeight: FontWeight.w700)),
        onDone: () {
          
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return const AcceuilPage();
          }));
        },
        onSkip: () {
          // On Skip button pressed
        },
        dotsDecorator: DotsDecorator(
          size: const Size.square(7.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Theme.of(context).colorScheme.secondary,
          color: Colors.green,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:okapi_zando_mobile/pages/login/loginPage.dart';
import 'package:okapi_zando_mobile/pages/singin/signinPage.dart';

class Singinorginup extends StatelessWidget {
  const Singinorginup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Okapizando.png',
                width: 300,
                height: 150,
              ),
              SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 9, 116, 204),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  minimumSize: Size(300, 40),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Signup(),
                    ),
                  );
                },
                child: Text(
                  'Se connecter',
                  style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 170, 172, 173),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  minimumSize: Size(300, 40),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Signinpage(),
                    ),
                  );
                },
                child: Text(
                  'S\'inscrire',
                  style: TextStyle(fontSize: 25,color: const Color.fromARGB(255, 9, 116, 204),fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

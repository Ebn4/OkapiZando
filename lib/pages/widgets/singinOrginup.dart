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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/Okapizando.png',
                width: 400,
                height: 200,
              ),
              SizedBox(height: 150),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 9, 116, 204),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  minimumSize: Size(300, 100),
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
                  style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 170, 172, 173),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  minimumSize: Size(300, 100),
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
                  style: TextStyle(fontSize: 30,color: const Color.fromARGB(255, 9, 116, 204),fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

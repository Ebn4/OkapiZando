import 'package:flutter/material.dart';

class Singinorginup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/Okapizando.png',
            ),
            SizedBox(height: 5),
            Text(
              'Log in',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            Text(
              'Sign up',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}

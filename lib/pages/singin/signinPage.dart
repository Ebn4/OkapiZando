import 'package:flutter/material.dart';
import 'package:okapi_zando_mobile/pages/login/loginPage.dart';

class Signinpage extends StatefulWidget {
  const Signinpage({super.key});

  @override
  State<Signinpage> createState() => _SigninpageState();
}

class _SigninpageState extends State<Signinpage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _phoneNumber = TextEditingController();

  // Le champ de mot de passe est masqué par défaut
  bool _obscurePassword = true;



  bool valeur = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Okapizando.png', width: 300, height: 200),
                  SizedBox(height: 5),
                  Text(
                    'Inscription',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.blue),
                  ),
                  SizedBox(height: 10),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            labelText: 'Nom',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Veuillez entrer votre nom';
                            }
                            return null;
                          },
                        ),
          
                        SizedBox(height: 16),
                        TextFormField(
                          controller: _phoneNumber,
                          decoration: InputDecoration(
                            labelText: 'Numero de telephone',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          keyboardType: TextInputType.phone,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Veuillez entrer votre numero de telephone';
                            }
                            // La creation d'une expression regulière pour valider le numero de telephone
                            final phoneRegex = RegExp(r"^\+?\d{10,15}$");
                            if (!phoneRegex.hasMatch(value)) {
                              return 'Veuillez entrer un numero de telephone valide';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 16),
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Veuillez entrer votre email';
                            }
                            // La creation d'une expression regulière pour valider l'email
                            final emailRegex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
                            if (!emailRegex.hasMatch(value)) {
                              return 'Veuillez entrer un email valide';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 16,),
                        TextFormField(
                          obscureText: _obscurePassword,
                          controller: _passwordController,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                              icon: Icon(_obscurePassword ? Icons.visibility_off : Icons.visibility,),
                            ),
                            labelText: 'Mot de passe',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Veuillez entrer votre mot de passe';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 16,),
                        TextFormField(
                          obscureText: _obscurePassword,
                          controller: _confirmPasswordController,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                              icon: Icon(_obscurePassword ? Icons.visibility_off : Icons.visibility,),
                            ),
                            labelText: 'Confirmation de mot de passe',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Veuillez confirmer votre mot de passe';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 30,),
                        SizedBox(
                          width: 300,
                          height: 55,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                print('Nom: ${_nameController.text}');
                                print('Email: ${_emailController.text}');
                              }
                            },
                            child: Text(
                              'S\'inscrire',
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: <Widget> [
                            Expanded(
                              child: Divider(
                                color: Colors.blue,
                                thickness: 2,
                                endIndent: 10,
                              ),
                            ),
                            Text("Ou s'inscrire avec",style: TextStyle(fontSize: 16),),
                            Expanded(
                              child: Divider(
                                color: Colors.blue,
                                thickness: 2,
                                indent: 10,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        SizedBox(
                          width: 250,
                          height: 55,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              side: BorderSide(
                                color: Colors.blue,
                                width: 3,
                              ),
                            ),
                            onPressed: () {},
                            label: Text(
                              'Google',
                              style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),
                            ),
                            icon: Image.asset(
                              'assets/images/icons8-google-48.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              Text('Vous avez déjà un compte ? '),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                                },
                                child: Text('Se connecter',style: TextStyle(color: Colors.blue),)
                              ),
                          ],
                        ),
                        SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
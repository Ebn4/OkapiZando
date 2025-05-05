import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

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
                  Image.asset('assets/images/Okapizando.png', width: 400, height: 200),
                  SizedBox(height: 5),
                  Text(
                    'Log in',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.blue),
                  ),
                  SizedBox(height: 100),
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
                            if (!value.contains('@')) {
                              return 'Veuillez entrer un email valide';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 32),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Remember me',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                SizedBox(width: 3),
                                Checkbox(
                                  value: valeur,
                                  onChanged: (abc) {
                                    setState(() {
                                      valeur = abc!;
                                    });
                                  },
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgotten password? ',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        SizedBox(
                          width: 300,
                          height: 55,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
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
                              'Log in',
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Divider(color: Colors.blue),
                        SizedBox(height: 15),
                        SizedBox(
                          width: 250,
                          height: 55,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              side: BorderSide(
                                color: Colors.blue,
                                width: 3,
                              ),
                            ),
                            onPressed: () {},
                            label: Text(
                              'Login with',
                              style: TextStyle(color: Colors.blue,fontSize: 20),
                            ),
                            icon: Image.asset(
                              'assets/images/icons8-google-48.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: 50,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              Text('Don\'t have an account?'),
                              GestureDetector(child: Text('Sign Up',style: TextStyle(color: Colors.blue),)),
                          ],
                        ),
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
import 'package:flutter/material.dart';

class Settingpage extends StatefulWidget {
  const Settingpage({super.key});

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Settings',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Card(
                color: Colors.white,

                elevation: 8,
                child: SizedBox(
                  width: 400,
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                              child: Icon(Icons.accessibility_new_rounded),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SizedBox(
                                width: 220,
                                child: Text('shipping adress'),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                               color: const Color.fromARGB(255, 206, 205, 205),
                              ),
                              child: Center(child: Icon(Icons.navigate_next)),
                            ),
                          ],
                        ),
                      ),
                        Divider(color:Colors.black),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                              child: Icon(Icons.accessibility_new_rounded),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SizedBox(
                                width: 220,
                                child: Text('shipping adress'),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              color: const Color.fromARGB(255, 206, 205, 205),
                              ),
                              child: Center(child: Icon(Icons.navigate_next)),
                            ),
                          ],
                        ),
                      ),
                       Divider(color:Colors.black),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                              child: Icon(Icons.accessibility_new_rounded),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SizedBox(
                                width: 220,
                                child: Text('shipping adress'),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 206, 205, 205),
                              ),
                              child: Center(child: Icon(Icons.navigate_next)),
                            ),
                          ],
                        ),
                      ),
                        Divider(color:Colors.black),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                              child: Icon(Icons.accessibility_new_rounded),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SizedBox(
                                width: 220,
                                child: Text('shipping adressjbjbjbjb'),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 206, 205, 205),
                              ),
                              child: Center(child: Icon(Icons.navigate_next)),
                            ),
                          ],
                        ),
                      ),
                        Divider(color:Colors.black),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                              child: Icon(Icons.accessibility_new_rounded),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SizedBox(
                                width: 220,
                                child: Text('shipping adress'),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 206, 205, 205),
                              ),
                              child: Center(child: Icon(Icons.navigate_next)),
                            ),
                          ],
                        ),
                      ),
                       Divider(color:Colors.black),
                    ],
                  ),
                ),
              ),
             Card(
                color: Colors.white,

                elevation: 8,
                child: SizedBox(
                  width: 400,
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                              child: Icon(Icons.accessibility_new_rounded),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SizedBox(
                                width: 220,
                                child: Text('shipping adress'),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 206, 205, 205),
                              ),
                              child: Center(child: Icon(Icons.navigate_next)),
                            ),
                          ],
                        ),
                      ),
                       Divider(color:Colors.black),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                              child: Icon(Icons.accessibility_new_rounded),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SizedBox(
                                width: 220,
                                child: Text('shipping adress'),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                               color: const Color.fromARGB(255, 206, 205, 205),
                              ),
                              child: Center(child: Icon(Icons.navigate_next)),
                            ),
                          ],
                        ),
                      ),
                        Divider(color:Colors.black),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                              child: Icon(Icons.accessibility_new_rounded),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SizedBox(
                                width: 220,
                                child: Text('shipping adress'),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                               color: const Color.fromARGB(255, 206, 205, 205),
                              ),
                              child: Center(child: Icon(Icons.navigate_next)),
                            ),
                          ],
                        ),
                      ),
                      Divider(color:Colors.black),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                              child: Icon(Icons.accessibility_new_rounded),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SizedBox(
                                width: 220,
                                child: Text('shipping adressjbjbjbjb'),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                               color: const Color.fromARGB(255, 206, 205, 205),
                              ),
                              child: Center(child: Icon(Icons.navigate_next)),
                            ),
                          ],
                        ),
                      ),
                      Divider(color: Colors.black),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                              child: Icon(Icons.accessibility_new_rounded),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SizedBox(
                                width: 220,
                                child: Text('shipping adress'),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 206, 205, 205),
                              ),
                              child: Center(child: Icon(Icons.navigate_next)),
                            ),
                          ],
                        ),
                      ),
                             ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

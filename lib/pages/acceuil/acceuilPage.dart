import 'package:flutter/material.dart';

import 'package:badges/badges.dart' as badges;
import 'package:okapi_zando_mobile/business/models/model_produit.dart';
import 'package:okapi_zando_mobile/business/models/model_produit_vendeur.dart';
import 'package:okapi_zando_mobile/pages/widgets/myBottomNavigation.dart';
import 'package:okapi_zando_mobile/pages/widgets/productCard2.dart';
import 'package:okapi_zando_mobile/pages/widgets/product_card.dart';
import 'package:circular_menu/circular_menu.dart';
import 'dart:math'; // Importez la librairie math pour 'pi'

class AcceuilPage extends StatefulWidget {
  const AcceuilPage({super.key});

  @override
  State<AcceuilPage> createState() => _AcceuilPageState();
}

class _AcceuilPageState extends State<AcceuilPage> {
  List<Product> products = [
    Product(
      title: 'Produit A',
      price: 19.99,
      imageUrl: 'assets/images/fraise.jpg',
      rating: 4,
    ),
    Product(
      title: 'Produit B',
      price: 29.99,
      imageUrl: 'assets/images/fraise.jpg',
      rating: 5,
    ),
    Product(
      title: 'Produit C',
      price: 15.00,
      imageUrl: 'assets/images/fraise.jpg',
      rating: 3,
    ),
    Product(
      title: 'Produit D',
      price: 9.50,
      imageUrl: 'assets/images/fraise.jpg',
      rating: 2,
    ),
    Product(
      title: 'Produit E',
      price: 45.00,
      imageUrl: 'assets/images/fraise.jpg',
      rating: 5,
    ),
    Product(
      title: 'Produit F',
      price: 12.30,
      imageUrl: 'assets/images/fraise.jpg',
      rating: 4,
    ),
  ];
  List<Productv> productvs = [
    Productv(
      title: 'Produit A',
      price: 19.99,
      imageUrl: 'assets/images/fraise.jpg',
      rating: 4,
    ),
    Productv(
      title: 'Produit B',
      price: 29.99,
      imageUrl: 'assets/images/fraise.jpg',
      rating: 5,
    ),
    Productv(
      title: 'Produit C',
      price: 15.00,
      imageUrl: 'assets/images/fraise.jpg',
      rating: 3,
    ),
    Productv(
      title: 'Produit D',
      price: 9.50,
      imageUrl: 'assets/images/fraise.jpg',
      rating: 2,
    ),
    Productv(
      title: 'Produit E',
      price: 45.00,
      imageUrl: 'assets/images/fraise.jpg',
      rating: 5,
    ),
    Productv(
      title: 'Produit F',
      price: 12.30,
      imageUrl: 'assets/images/fraise.jpg',
      rating: 4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/images/Logo OkapiZando PNG@3x.png',
          width: 100,
          height: 100,
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: badges.Badge(
                  badgeContent: Text(
                    '3',
                    style: TextStyle(color: Colors.white),
                  ),
                  child: Icon(Icons.shopping_cart),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: badges.Badge(
                  badgeContent: Text(
                    '5',
                    style: TextStyle(color: Colors.white),
                  ),
                  child: Icon(Icons.message),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: badges.Badge(
                  badgeContent: Text(
                    '1',
                    style: TextStyle(color: Colors.white),
                  ),
                  child: Icon(Icons.notifications),
                ),
              ),
            ],
          ),
        ],
      ),
      body: CircularMenu(
        // menu alignment
        alignment: Alignment.bottomCenter,
        // menu radius
        radius: 100,
        // widget in the background holds actual page content
        backgroundWidget: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Récents',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 160,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                10,
                              ), // valeur d'arrondi
                              child: Container(
                                width: 300,
                                height: double.infinity,
                                child: Image.asset(
                                  'assets/images/fraise.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                10,
                              ), // valeur d'arrondi
                              child: Container(
                                width: 300,
                                height: double.infinity,
                                child: Image.asset(
                                  'assets/images/fraise.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                10,
                              ), // valeur d'arrondi
                              child: Container(
                                width: 300,
                                height: double.infinity,
                                child: Image.asset(
                                  'assets/images/fraise.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Categories',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      SizedBox(
                        height: 110,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(1, 3),
                                      ),
                                    ],
                                  ),
                                  child: Icon(Icons.shopping_bag, size: 30),
                                ),

                                SizedBox(height: 10),
                                const Text('un'),
                              ],
                            ),
                            SizedBox(width: 15),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(1, 3),
                                      ),
                                    ],
                                  ),
                                  child: Icon(Icons.shopping_bag, size: 30),
                                ),
                                SizedBox(height: 10),
                                const Text('un'),
                              ],
                            ),
                            SizedBox(width: 15),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.lightGreen,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(1, 3),
                                      ),
                                    ],
                                  ),
                                  child: Icon(Icons.shopping_bag, size: 30),
                                ),
                                SizedBox(height: 10),
                                const Text('un'),
                              ],
                            ),
                            SizedBox(width: 15),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(
                                          0.2,
                                        ), // couleur de l'ombre
                                        spreadRadius: 2, // étalement de l'ombre
                                        blurRadius: 5, // flou de l'ombre
                                        offset: Offset(
                                          1,
                                          3,
                                        ), // décalage horizontal et vertical
                                      ),
                                    ],
                                  ),
                                  child: Icon(Icons.navigate_next, size: 30),
                                ),
                                SizedBox(height: 10),
                                const Text('un'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        color: Colors.blue,
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                            'Nous vous offrond des services et des ppproduits de qualité et abordable',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Meilleurs',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 8),
                          const Text(
                            'ventes',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: 0.75, // ajuster ici selon le design
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children:
                            products
                                .map((product) => ProductCard(product))
                                .toList(),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Meilleurs',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 8),
                          const Text(
                            'ventes',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: 0.75, // ajuster ici selon le design
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children:
                            productvs
                                .map((Productv) => ProductCard2(Productv))
                                .toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              left: 0,
              right: 0,
              bottom: -3,
              child: MybottomNavigation(),
            ),
          ],
        ),
        // Assurez-vous que MyCustomWidget est défini
        // global key to control the animation anywhere in the code.
        key: GlobalKey<CircularMenuState>(), // Initialisez GlobalKey
        // animation duration
        animationDuration: const Duration(milliseconds: 500),
        // animation curve in forward
        curve: Curves.bounceOut,
        // animation curve in reverse
        reverseCurve: Curves.fastOutSlowIn,
        // first item angle
        startingAngleInRadian: 1.15 * pi,
        // last item angle
        endingAngleInRadian: 1.85 * pi,
        // toggle button callback
        toggleButtonOnPressed: () {
          //callback
        },
        // toggle button appearance properties
        toggleButtonColor: Colors.blue,
        toggleButtonBoxShadow: const [
          BoxShadow(color: Colors.blue, blurRadius: 10),
        ],
        toggleButtonIconColor: Colors.white,
        toggleButtonMargin: 10.0,
        toggleButtonPadding: 10.0,
        toggleButtonSize: 40.0,
        items: [
          CircularMenuItem(
            // menu item callback
            onTap: () {
              // callback
            },
            // menu item appearance properties
            icon: Icons.home,
            color: Colors.blue,
            iconColor: Colors.white,
            iconSize: 30.0,
            margin: 10.0,
            padding: 10.0,
            // when 'animatedIcon' is passed,above 'icon' will be ignored
            // animatedIcon: AnimatedIcon(), // Décommentez et configurez si nécessaire
          ),
          CircularMenuItem(
            icon: Icons.search,
            color: Colors.cyan,
            iconColor: Colors.orange,
            iconSize: 30.0,
            onTap: () {
              //callback
            },
          ),
          CircularMenuItem(
            icon: Icons.settings,
            onTap: () {
              //callback
            },
          ),
          CircularMenuItem(
            icon: Icons.star,
            onTap: () {
              //callback
            },
          ),
        ],
      ),
      //bottomNavigationBar: MybottomNavigation()
    );
  }
}

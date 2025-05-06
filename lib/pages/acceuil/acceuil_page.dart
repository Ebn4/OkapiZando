import 'package:flutter/material.dart';

import 'package:badges/badges.dart' as badges;

class AcceuilPage extends StatefulWidget {
  const AcceuilPage({super.key});

  @override
  State<AcceuilPage> createState() => _AcceuilPageState();
}

class _AcceuilPageState extends State<AcceuilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Badges Example'),
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
    );
  }
}

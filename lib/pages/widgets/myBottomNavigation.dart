import 'package:flutter/material.dart';
import 'package:okapi_zando_mobile/pages/userProfile/profilePage.dart';

class MybottomNavigation extends StatefulWidget {
  @override
  State<MybottomNavigation> createState() => _MybottomNavigationState();
}

class _MybottomNavigationState extends State<MybottomNavigation> {
  late int _currentIndex;

  @override
  void initState() {
    _currentIndex = 0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
        data: NavigationBarThemeData(height: 55),
        child: NavigationBar(
          elevation: 12,
          backgroundColor: Colors.white,
          selectedIndex: _currentIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'home',
            ),
            NavigationDestination(
              icon: Icon(Icons.search_outlined),
              label: 'search',
            ),
          
            NavigationDestination(
              icon: GestureDetector(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Profilepage();
                  }));
              }, child: Icon(Icons.person_2_outlined)),
              label: 'profil',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'setting',
            ),
          ],
        ),
      );
      
  }
}
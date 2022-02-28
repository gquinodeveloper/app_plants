import 'package:flutter/material.dart';
import 'package:g58_appdesign/screens/contact/contact_screen.dart';
import 'package:g58_appdesign/screens/home/home_screen.dart';
import 'package:g58_appdesign/theme/app_theme.dart';

class AppRoot extends StatefulWidget {
  AppRoot({Key? key}) : super(key: key);

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  int _selectedIndex = 0;
  List<Widget> _allScreens = [
    HomeScreen(),
    ContactScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _allScreens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_max_rounded),
            label: 'Home',
            backgroundColor: AppTheme.kBackground,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline_rounded),
            label: 'Contacts',
            backgroundColor: AppTheme.kBackground,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: AppTheme.kBackground,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: AppTheme.kBackground,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppTheme.kGreen,
        unselectedItemColor: Colors.black26,
        onTap: _onItemTapped,
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'Home.dart';
import 'Menu_Screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int _selectedscreenindex = 0;
  final List _screens = [const HomeScreen(), const MenuScreen()];
  void _selectedscreen(int index) {
    setState(() {
      _selectedscreenindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 63.0,
        width: double.infinity,
        child: Card(
          elevation: 1.0,
          child: BottomNavigationBar(
            currentIndex: _selectedscreenindex,
            onTap: _selectedscreen,
            selectedItemColor: Color.fromARGB(255, 12, 15, 87),
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu")
            ],
            selectedLabelStyle: TextStyle(fontFamily: 'Calibri'),
          ),
        ),
      ),
      body: _screens[_selectedscreenindex],
    );
  }
}

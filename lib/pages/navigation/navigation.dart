import 'package:flutter/material.dart';
import 'package:kinclong/pages/home/home.dart';
import 'package:kinclong/pages/register/register.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() {
    return _NavigationState();
  }
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  final List<Widget> _childern = const [
    HomePage(),
    RegisterPage(),
  ];

  // onBarTapped
  void onBarTapped(int i) {
    setState(() {
      _currentIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _childern[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onBarTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
            ),
            BottomNavigationBarItem(
              label: "home",
              icon: Icon(Icons.history),
            ),
          ],
        ),
      ),
    );
  }
}

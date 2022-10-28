import 'package:flutter/material.dart';
import 'package:lodione/customwidgets.dart';
import 'functions/addorder.dart';
import 'pages/circlepage.dart';
import 'pages/homepage.dart';
import 'pages/intropage.dart';
import 'pages/profilepage.dart';
import 'pages/shoppage.dart';
import 'todo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Lodihome(),
    );
  }
}

class Lodihome extends StatelessWidget {
  const Lodihome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Lodione',
      home: Intro(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LandPage extends StatefulWidget {
  const LandPage({super.key});

  @override
  State<LandPage> createState() => _HomepageState();
}

class _HomepageState extends State<LandPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    CirclePage(),
    ShopPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              activeIcon: const Icon(Icons.home),
              icon: const Icon(Icons.home_outlined),
              label: 'Home',
              backgroundColor: Colors.brown.shade800),
          BottomNavigationBarItem(
              activeIcon: const Icon(Icons.circle),
              icon: const Icon(Icons.circle_outlined),
              label: 'Circle',
              backgroundColor: Colors.blue.shade800),
          BottomNavigationBarItem(
            activeIcon: const Icon(Icons.store),
            icon: const Icon(Icons.store_outlined),
            label: 'Shop',
            backgroundColor: Colors.red.shade800,
          ),
          BottomNavigationBarItem(
            activeIcon: const Icon(Icons.person),
            icon: const Icon(Icons.person_outlined),
            label: 'Profile',
            backgroundColor: Colors.green.shade800,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}

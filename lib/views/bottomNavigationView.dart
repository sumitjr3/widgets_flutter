import 'package:flutter/material.dart';
import 'package:widgets_flutter/main.dart';
import 'package:widgets_flutter/views/pages/homePage.dart';
import 'package:widgets_flutter/views/pages/messagePage.dart';
import 'package:widgets_flutter/views/pages/profilePage.dart';
import 'package:widgets_flutter/views/pages/settingPage.dart';

class BottomNavigationView extends StatefulWidget {
  const BottomNavigationView({super.key});

  @override
  State<BottomNavigationView> createState() => _BottomNavigationViewState();
}

class _BottomNavigationViewState extends State<BottomNavigationView> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePages(),
    profilePage(),
    settingPage(),
    messagePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'message'),
        ],
        onTap: _navigateBottomBar,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType
            .fixed, //if more than 3 items is used in bottom navigation then use this property
      ),
    );
  }
}

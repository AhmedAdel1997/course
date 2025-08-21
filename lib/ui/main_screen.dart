import 'dart:developer';

import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'notification_screen.dart';
import 'profile_screen.dart';

// Bottom Navigation bar

// create state  // first call
// initState  //second call if exist
// build  //third call
// dispose  // call if exist
// setState

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final pages = [HomeScreen(), NotificationScreen(), ProfileScreen()];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    log('initState');
  }

  @override
  void dispose() {
    log('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log('build');
    return PopScope(
      canPop: currentIndex == 0 ? true : false,
      onPopInvokedWithResult: (didPop, result) {
        setState(() {
          currentIndex = 0;
        });
      },
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedLabelStyle: TextStyle(color: Colors.blue),
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: currentIndex == 0 ? Colors.blue : Colors.grey,
              ),
              label: 'Home',
              // tooltip: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: currentIndex == 1 ? Colors.blue : Colors.grey,
              ),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: currentIndex == 2 ? Colors.blue : Colors.grey,
              ),
              label: 'Profile',
            ),
          ],
        ),
        body: pages[currentIndex],
      ),
    );
  }
}

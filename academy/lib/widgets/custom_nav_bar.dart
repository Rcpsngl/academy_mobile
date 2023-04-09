import 'package:academy/screens/featured_screen.dart';
import 'package:academy/screens/notification_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../screens/settings_screen.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  final PageController _pageController = PageController(initialPage: 0);

  static final List<Widget> _pages = <Widget>[
    const FeaturedScreen(),
    NotificationScreen(),
    const SettingsScreen(),
  ];

  void _onTabTapped(int index) {
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _pages,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color(0xffFCCD00),
        color: const Color(0xff29404E),
        animationDuration: const Duration(milliseconds: 300),
        onTap: _onTabTapped,
        items: const [
          Icon(Icons.home, color: Colors.white),
          Icon(
            Icons.assured_workload_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

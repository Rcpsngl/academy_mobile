import 'package:academy/screens/settings_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_nav_bar.dart';
import 'featured_screen.dart';
import 'notification_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const FeaturedScreen(),
    NotificationScreen(),
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff102733),
      body: _pages[_selectedIndex],
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}

import 'package:academy/screens/settings_screen.dart';
import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../constants/icons.dart';
import '../constants/size.dart';
import '../widgets/custom_nav_bar.dart';
import 'featured_screen.dart';
import 'notification_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    FeaturedScreen(),
    NotificationScreen(),
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff102733),
      body: _pages[_selectedIndex],
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}

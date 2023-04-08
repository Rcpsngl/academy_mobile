import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../constants/icons.dart';
import '../constants/size.dart';
import 'featured_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    FeaturedScreen(),
    FeaturedScreen(),
    FeaturedScreen(),
    FeaturedScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: kPrimaryColor,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                activeIcon: Image.asset(
                  icHome,
                  height: kBottomNavigationBarItemSize,
                ),
                icon: Image.asset(
                  icactHome,
                  height: kBottomNavigationBarItemSize,
                ),
                label: "Anasayfa",
              ),
              BottomNavigationBarItem(
                activeIcon: Image.asset(
                  icPerson,
                  height: kBottomNavigationBarItemSize,
                ),
                icon: Image.asset(
                  icdeactivePerson,
                  height: kBottomNavigationBarItemSize,
                ),
                label: "Profil",
              ),
              BottomNavigationBarItem(
                activeIcon: Image.asset(
                  icSetting,
                  height: kBottomNavigationBarItemSize,
                ),
                icon: Image.asset(
                  icSettingOutlined,
                  height: kBottomNavigationBarItemSize,
                ),
                label: "Ayarlar",
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
              switch (index) {
                case 0:
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/baseScreen', (Route<dynamic> route) => false);
                  break;
                case 1:
                  Navigator.pushNamed(context, '/profileScreen');
                  break;
                case 2:
                  Navigator.pushNamed(context, '/settingsScreen');
                  break;
              }
            }),
      ),
    );
  }
}

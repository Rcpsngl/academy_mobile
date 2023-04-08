import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../constants/icons.dart';
import '../constants/size.dart';
import '../models/setting.dart';
import '../widgets/avatar_card.dart';
import '../widgets/setting_tile.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      CupertinoIcons.back,
                      size: 30,
                    )),
                const AvatarCard(),
                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 10),
                Column(
                  children: List.generate(
                    settings.length,
                    (index) => SettingTile(setting: settings[index]),
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 10),
                Column(
                  children: List.generate(
                    settings2.length,
                    (index) => SettingTile(setting: settings2[index]),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
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

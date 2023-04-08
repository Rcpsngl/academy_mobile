import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting {
  final String title;
  final String route;
  final IconData icon;

  Setting({
    required this.title,
    required this.route,
    required this.icon,
  });
}

final List<Setting> settings = [
  Setting(
    title: "Kişisel Bilgiler",
    route: "/",
    icon: CupertinoIcons.person_fill,
  ),
  Setting(
    title: "Ayarlar",
    route: "/",
    icon: Icons.settings,
  ),
  Setting(
    title: "Sertifikalarım",
    route: "/",
    icon: CupertinoIcons.doc_fill,
  ),
  Setting(
    title: "Çıkış Yap",
    route: "/",
    icon: Icons.logout,
  ),
];

final List<Setting> settings2 = [
  Setting(
    title: "SSS",
    route: "/",
    icon: CupertinoIcons.ellipsis_vertical_circle_fill,
  ),
  Setting(
    title: "Geribildirim",
    route: "/",
    icon: CupertinoIcons.pencil_circle_fill,
  ),
  Setting(
    title: "Topluluk",
    route: "/",
    icon: CupertinoIcons.person_3_fill,
  ),
];

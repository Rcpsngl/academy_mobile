import 'package:flutter/cupertino.dart';

class Category {
  String thumbnail;
  String name;

  Category({
    required this.name,
    required this.thumbnail,
  });
}

List<Category> categoryList = [
  Category(
    name: 'Eğitimler',
    thumbnail: 'lib/assets/images/education.png',
  ),
  Category(
    name: 'OUA Forum',
    thumbnail: 'lib/assets/images/menu.png',
  ),
  Category(
    name: 'Etkinlikler',
    thumbnail: 'lib/assets/images/sports.png',
  ),
  Category(
    name: 'Takvim',
    thumbnail: 'lib/assets/images/notify.png',
  ),
];

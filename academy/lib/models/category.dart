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
    thumbnail: 'lib/assets/images/egitim7.png',
  ),
  Category(
    name: 'OUA Forum',
    thumbnail: 'lib/assets/images/forum7.png',
  ),
  Category(
    name: 'Etkinlikler',
    thumbnail: 'lib/assets/images/etkinlik7.png',
  ),
  Category(
    name: 'Takvim',
    thumbnail: 'lib/assets/images/takvim8.png',
  ),
];

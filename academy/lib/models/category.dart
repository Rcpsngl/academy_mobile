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
    thumbnail: 'lib/assets/images/egitim2.png',
  ),
  Category(
    name: 'OUA Forum',
    thumbnail: 'lib/assets/images/forum2.png',
  ),
  Category(
    name: 'Etkinlikler',
    thumbnail: 'lib/assets/images/etkinlik1.png',
  ),
  Category(
    name: 'Takvim',
    thumbnail: 'lib/assets/images/takvim5.png',
  ),
];

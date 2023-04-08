import 'package:flutter/cupertino.dart';

class Category {
  String thumbnail;
  String name;
  int? noOfCourses;

  Category({
    required this.name,
    this.noOfCourses,
    required this.thumbnail,
  });
}

List<Category> categoryList = [
  Category(
    name: 'Eğitimler',
    noOfCourses: 9,
    thumbnail: 'lib/assets/icons/laptop.jpg',
  ),
  Category(
    name: 'OUA Forum',
    noOfCourses: 20,
    thumbnail: 'lib/assets/icons/accounting.jpg',
  ),
  Category(
    name: 'Etkinlikler',
    noOfCourses: 16,
    thumbnail: 'lib/assets/icons/photography.jpg',
  ),
  Category(
    name: 'Takvim',
    noOfCourses: 25,
    thumbnail: 'lib/assets/icons/design.jpg',
  ),
];

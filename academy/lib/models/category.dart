class Category {
  String thumbnail;
  String name;
  int noOfCourses;

  Category({
    required this.name,
    required this.noOfCourses,
    required this.thumbnail,
  });
}

List<Category> categoryList = [
  Category(
    name: 'Teknik Eğitimler',
    noOfCourses: 55,
    thumbnail: 'lib/assets/icons/laptop.jpg',
  ),
  Category(
    name: 'Girişimcilik',
    noOfCourses: 20,
    thumbnail: 'lib/assets/icons/accounting.jpg',
  ),
  Category(
    name: 'Finans',
    noOfCourses: 16,
    thumbnail: 'lib/assets/icons/photography.jpg',
  ),
  Category(
    name: 'Hukuk',
    noOfCourses: 25,
    thumbnail: 'lib/assets/icons/design.jpg',
  ),
];

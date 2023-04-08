class Course {
  String name;
  double completedPercentage;
  String ogretmen;
  String thumbnail;

  Course({
    required this.ogretmen,
    required this.completedPercentage,
    required this.name,
    required this.thumbnail,
  });
}

List<Course> courses = [
  Course(
    ogretmen: ":Sercan Yusuf",
    completedPercentage: 0.1,
    name: "Flutter Hazırlık",
    thumbnail: "lib/assets/icons/flutter.jpg",
  ),
  Course(
    ogretmen: ":Gazihan Alankuş",
    completedPercentage: .60,
    name: "Flutter ile Uygulama Geliştirme",
    thumbnail: "lib/assets/icons/flutter.jpg",
  ),
  Course(
    ogretmen: ":Sercan Yusuf",
    completedPercentage: 0.8,
    name: "Flutter İle Örnek Uygulama Geliştirme",
    thumbnail: "lib/assets/icons/flutter.jpg",
  ),
  Course(
    ogretmen: ":Ömer Erkmen",
    completedPercentage: .75,
    name: "Temel Girişimcilik",
    thumbnail: "lib/assets/icons/girisimcilik2.png",
  ),
  Course(
    ogretmen: ":Burak Özdemir",
    completedPercentage: .3,
    name: "Girişimciler İçin Hukuk",
    thumbnail: "lib/assets/icons/hukuk.png",
  ),
  Course(
    ogretmen: ":Serhat Yanık",
    completedPercentage: .2,
    name: "Girişimciler İçin Finans",
    thumbnail: "lib/assets/icons/finans.png",
  ),
  Course(
    ogretmen: ":Berna Aksoy",
    completedPercentage: .8,
    name: "Girişmciler İçin İK",
    thumbnail: "lib/assets/icons/insan_kaynaklari.png",
  ),
  Course(
    ogretmen: ":Seçkin Esen",
    completedPercentage: .6,
    name: "Yazılımcılar İçin İngilizce",
    thumbnail: "lib/assets/icons/ingilizce.png",
  ),
  Course(
    ogretmen: ":Seçkin Esen",
    completedPercentage: .6,
    name: "Proje Yönetimi (Coursera)",
    thumbnail: "lib/assets/icons/design.jpg",
  ),
];

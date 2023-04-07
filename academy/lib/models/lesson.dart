class Lesson {
  String name;
  String duration;
  bool isPlaying;
  bool isCompleted;

  Lesson({
    required this.duration,
    required this.isCompleted,
    required this.isPlaying,
    required this.name,
  });
}

List<Lesson> lessonList = [
  Lesson(
    duration: '11 dakika ',
    isCompleted: true,
    isPlaying: true,
    name: "Flutter Kurulumu",
  ),
  Lesson(
    duration: '10 dakika',
    isCompleted: false,
    isPlaying: false,
    name: "Dart 101",
  ),
  Lesson(
    duration: '7 dakika',
    isCompleted: false,
    isPlaying: false,
    name: "Veri Tipleri",
  ),
  Lesson(
    duration: '5 dakika',
    isCompleted: false,
    isPlaying: false,
    name: "Operatörler",
  ),
  Lesson(
    duration: '5 dakika',
    isCompleted: false,
    isPlaying: false,
    name: "Koşul Ve Döngüler",
  ),
  Lesson(
    duration: '5 min',
    isCompleted: false,
    isPlaying: false,
    name: "Fonksiyonlar",
  )
];

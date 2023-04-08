class Comment {
  String name;
  String duration;
  bool isPlaying;
  bool isCompleted;

  Comment({
    required this.duration,
    required this.isCompleted,
    required this.isPlaying,
    required this.name,
  });
}

List<Comment> commentList = [
  Comment(
    duration: '11 dakika ',
    isCompleted: true,
    isPlaying: true,
    name: "Yorum 1",
  ),
  Comment(
    duration: '10 dakika',
    isCompleted: false,
    isPlaying: false,
    name: "Yorum 2",
  ),
  Comment(
    duration: '7 dakika',
    isCompleted: false,
    isPlaying: false,
    name: "Veri Tipleri",
  ),
  Comment(
    duration: '5 dakika',
    isCompleted: false,
    isPlaying: false,
    name: "Operatörler",
  ),
  Comment(
    duration: '5 dakika',
    isCompleted: false,
    isPlaying: false,
    name: "Koşul Ve Döngüler",
  ),
  Comment(
    duration: '5 min',
    isCompleted: false,
    isPlaying: false,
    name: "Fonksiyonlar",
  )
];

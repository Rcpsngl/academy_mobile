class Comment {
  String name;
  String duration;
  bool isPlaying;
  bool isCompleted;
  String upvote;
  String downvote;

  Comment({
    required this.duration,
    required this.isCompleted,
    required this.isPlaying,
    required this.name,
    required this.upvote,
    required this.downvote,
  });
}

List<Comment> commentList = [
  Comment(
      duration: '1 gün önce ',
      isCompleted: true,
      isPlaying: true,
      name:
          "Recep Şengül: Yorum 1 lorem Yorum 1 lorem Yorum 1 lorem Yorum 1 lorem Yorum 1 lorem Yorum 1 lorem Yorum 1 lorem",
      upvote: '50',
      downvote: '2'),
  Comment(
      duration: '30 dakika önce',
      isCompleted: false,
      isPlaying: false,
      name: "Yorum 2",
      upvote: '43',
      downvote: '5'),
  Comment(
      duration: '3 gün önce',
      isCompleted: false,
      isPlaying: false,
      name: "Veri Tipleri",
      upvote: '33',
      downvote: '7'),
  Comment(
      duration: '5 dakika önce',
      isCompleted: false,
      isPlaying: false,
      name: "Operatörler",
      upvote: '27',
      downvote: '2'),
  Comment(
      duration: '1 saat',
      isCompleted: false,
      isPlaying: false,
      name: "Koşul Ve Döngüler",
      upvote: '10',
      downvote: '5'),
  Comment(
      duration: '3 gün önce',
      isCompleted: false,
      isPlaying: false,
      name: "Fonksiyonlar",
      upvote: '5',
      downvote: '2'),
];

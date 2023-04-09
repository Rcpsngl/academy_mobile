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
      name: "Hocam çok acıklayıcı anlatıyorsunuz,teşekkür ederim",
      upvote: '50',
      downvote: '2'),
  Comment(
      duration: '30 dakika önce',
      isCompleted: false,
      isPlaying: false,
      name:
          "Temelden flutter eğitim serisi bazi konularda güncelligini yitirmiş.Ama aynı serinin udemyde olduğunu gördüm  eğer orda eski yerleri güncelleme yaptıysanız almak istiyorum",
      upvote: '43',
      downvote: '5'),
  Comment(
      duration: '3 gün önce',
      isCompleted: false,
      isPlaying: false,
      name: "Hocam riverpod videosu gelecek mi?",
      upvote: '33',
      downvote: '7'),
  Comment(
      duration: '5 dakika önce',
      isCompleted: false,
      isPlaying: false,
      name:
          "Karmaşık json yapılarindan veri çekme ile alakalı bir video gelir mi?",
      upvote: '27',
      downvote: '2'),
  Comment(
      duration: '1 saat',
      isCompleted: false,
      isPlaying: false,
      name:
          "Hocam home.dart dosyasındaki card widgetı nasıl refactor ettiğinizi anlamadım.",
      upvote: '10',
      downvote: '5'),
  Comment(
      duration: '3 gün önce',
      isCompleted: false,
      isPlaying: false,
      name:
          "1 sene önce sizin videolarınızdan flutter a giriş yapmıştım. Anlatımınız çok güzel,örnekler çok iyi, tebrik ederim.",
      upvote: '5',
      downvote: '2'),
];

import 'package:flutter/material.dart';

class ForumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Sekme sayısı
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff03dac6),
          child: Icon(Icons.add),
          foregroundColor: Colors.black,
          onPressed: () {},
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xff03dac6),
          title: Text('Forum'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Sorular'),
              Tab(text: 'Sosyal'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ForumTab(
              title: 'Sorular',
              posts: [
                ForumPost(
                  username: 'Kullanıcı Adı 1',
                  postTitle: 'Başlık 1',
                  postContent: 'İçerik 1',
                  postDate: '4 Nisan 2023',
                ),
                ForumPost(
                  username: 'Kullanıcı Adı 2',
                  postTitle: 'Başlık 2',
                  postContent: 'İçerik 2',
                  postDate: '5 Nisan 2023',
                ),
              ],
            ),
            ForumTab(
              title: 'Sosyal',
              posts: [
                ForumPost(
                  username: 'Kullanıcı Adı 3',
                  postTitle: 'Başlık 3',
                  postContent: 'İçerik 3',
                  postDate: '6 Nisan 2023',
                ),
                ForumPost(
                  username: 'Kullanıcı Adı 4',
                  postTitle: 'Başlık 4',
                  postContent: 'İçerik 4',
                  postDate: '7 Nisan 2023',
                ),
                ForumPost(
                  username: 'Kullanıcı Adı 5',
                  postTitle: 'Başlık 5',
                  postContent: 'İçerik 4',
                  postDate: '7 Nisan 2023',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ForumTab extends StatelessWidget {
  final String title;
  final List<ForumPost> posts;

  ForumTab({
    required this.title,
    required this.posts,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (BuildContext context, int index) {
        return ForumCard(
          username: posts[index].username,
          postTitle: posts[index].postTitle,
          postContent: posts[index].postContent,
          postDate: posts[index].postDate,
        );
      },
    );
  }
}

class ForumPost {
  final String username;
  final String postTitle;
  final String postContent;
  final String postDate;

  ForumPost({
    required this.username,
    required this.postTitle,
    required this.postContent,
    required this.postDate,
  });
}

class ForumCard extends StatelessWidget {
  final String username;
  final String postTitle;
  final String postContent;
  final String postDate;

  ForumCard({
    required this.username,
    required this.postTitle,
    required this.postContent,
    required this.postDate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: Text(
                    username[0],
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.blue,
                ),
                SizedBox(width: 8),
                Text(
                  username,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              postTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(postContent),
            SizedBox(height: 8),
            Text(
              postDate,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

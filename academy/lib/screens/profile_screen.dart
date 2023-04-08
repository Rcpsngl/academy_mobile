import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants/icons.dart';
import '../widgets/numbers_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[buildTop(), buildContent()],
      ),
    );
  }

  Stack buildTop() {
    return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 50), child: buildCoverImage()),
          Positioned(top: 120, child: buildProfileImage()),
        ]);
  }

  Widget buildContent() => Column(
        children: [
          SizedBox(height: 8),
          Text(
            'osman kok',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text('Akademi Bursiyeri',
              style: TextStyle(fontFamily: 'Poppins', fontSize: 15)),
          const SizedBox(height: 16),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            IconButton(onPressed: null, icon: Icon(FontAwesomeIcons.slack)),
            buildSocialIcon(FontAwesomeIcons.slack),
            const SizedBox(width: 12),
            buildSocialIcon(FontAwesomeIcons.github),
            const SizedBox(width: 12),
            buildSocialIcon(FontAwesomeIcons.twitter),
            const SizedBox(width: 12),
            buildSocialIcon(FontAwesomeIcons.linkedin),
            const SizedBox(width: 12),
          ]),
          const SizedBox(height: 16),
          Divider(),
          const SizedBox(height: 16),
          NumbersWidget(),
          const SizedBox(height: 16),
          buildAbout(),
          const SizedBox(height: 16)
        ],
      );

  Widget buildAbout() => Column(
        children: [
          Text(
            'Hakkında',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
              style: TextStyle(
                  fontFamily: 'Poppins-SemiBold',
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
              """Lorem Ipsum is simply dummy text of the printing 
              and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum""")
        ],
      );

  Widget buildSocialIcon(IconData icon) => CircleAvatar(
      radius: 25,
      child: Material(
        shape: CircleBorder(),
        clipBehavior: Clip.hardEdge,
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Center(child: Icon(icon, size: 32)),
        ),
      ));

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset(
          icPerson,
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );
  Widget buildProfileImage() => Container(
        child: Image.asset(
          icLearning,
          width: double.infinity / 3,
          height: coverHeight / 2,
        ),
      );
}

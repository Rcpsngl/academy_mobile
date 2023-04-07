// ignore_for_file: prefer_const_constructors

import 'package:academy/pages/auth_page.dart';
import 'package:academy/pages/forum_screen.dart';
import 'package:academy/pages/login_or_register_page.dart';
import 'package:academy/pages/register_page.dart';
import 'package:academy/screens/featured_screen.dart';
import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screens/base_screen.dart';
import 'screens/course_screen.dart';
import 'screens/details_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/authPage": (context) => AuthPage(),
        "/forumScreen": (context) => ForumScreen(),
        "/loginOrRegisterPage": (context) => LoginOrRegisterPage(),
        "/loginPage": (context) => LoginPage(
              onTap: () {},
            ),
        "/registerPage": (context) => RegisterPage(onTap: () {}),
        "/baseScreen": (context) => BaseScreen(),
        "/courseScreen": (context) => CourseScreen(),
        "/detailsScreen": (context) => DetailsScreen(title: 'asd'),
        "/featuredScreen": (context) => FeaturedScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: BaseScreen(),
    );
  }
}

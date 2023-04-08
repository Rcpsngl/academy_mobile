import 'package:academy/pages/login_page.dart';
import 'package:academy/screens/base_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'forum_screen.dart';
import 'login_or_register_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // kullanici girisi basarili
          if (snapshot.hasData) {
            return BaseScreen();
          }
          //kullanici girisi basarisiz
          else {
            return LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}

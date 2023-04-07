import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:academy/components/my_button.dart';
import 'package:academy/components/my_textfield.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  LoginPage({super.key, required this.onTap});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // giris yap fonksiyonu
  void signUserIn() async {
    //yükleniyor dairesi göster
    showDialog(
      context: context,
      builder: (context) {
        return Center(child: CircularProgressIndicator());
      },
    );
    //giris yapmak
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      //hata mesajı göster
      showErrorMessage(e.code);
    }
  }

  //kullanıcıya hata gösterme fonksiyonu
  void showErrorMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              backgroundColor: Colors.black,
              title: Center(
                  child: Text(
                message,
                style: TextStyle(color: Colors.white),
              )));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),

                // logo
                Container(
                    width: 180,
                    height: 180,
                    child: Image.asset("lib/assets/images/academy.png")),

                const SizedBox(height: 20),

                // akademiye hosgeldiniz
                Text(
                  "Akademi Mobil'e Hoşgeldiniz",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),

                // email textfield
                MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // şifre textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Şifre',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                // sifremi unuttum

                const SizedBox(height: 25),

                // giris yap button
                MyButton(
                  text: 'Giriş Yap',
                  onTap: signUserIn,
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          child: Text('Şifremi Unuttum',
                              style: TextStyle(color: Colors.grey[600])),
                          onPressed: () {
                            AlertDialog(
                                backgroundColor: Colors.black,
                                title: Center(
                                    child: Text(
                                  'Doğrulama e postası gönderildi',
                                  style: TextStyle(color: Colors.white),
                                )));
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 50),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Kayıt ol Kısmı
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hesabınız Yok Mu?',
                      style: TextStyle(color: Colors.grey[700], fontSize: 16),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Üye Ol',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

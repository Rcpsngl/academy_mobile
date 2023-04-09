import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:academy/components/my_button.dart';
import 'package:academy/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  RegisterPage({super.key, required this.onTap});
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // kayıt ol fonksiyonu
  void signUserUp() async {
    //yükleniyor dairesi göster
    showDialog(
      context: context,
      builder: (context) {
        return Center(child: CircularProgressIndicator());
      },
    );
    //kayıt ol
    try {
      if (passwordController.text == confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);
      } else {
        showErrorMessage('Şifreler aynı değil!');
      }
      Navigator.pushNamed(context, "/baseScreen");
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
      backgroundColor: Color(0xff102733),
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
                  "Lütfen Bilgileri Eksiksiz Doldurun",
                  style: TextStyle(
                    color: Colors.white,
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
                //şifre doğrula
                MyTextField(
                  controller: confirmPasswordController,
                  hintText: 'Şifreyi Doğrula',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                // sifremi unuttum

                const SizedBox(height: 25),

                // giris yap button
                MyButton(
                  text: 'Kayıt Ol',
                  onTap: signUserUp,
                ),

                const SizedBox(height: 50),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
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
                      'Zaten Hesabınız Varsa',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/loginPage");
                          },
                          child: const Text(
                            'Giriş Yap',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
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

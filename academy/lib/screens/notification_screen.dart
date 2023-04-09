import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../constants/constants.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kKoyuArkaplan,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          backgroundColor: kKoyuArkaplan,
          centerTitle: true,
        ),
      ),
      body: Stack(children: [
        Container(
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(kFixPadding),
          padding: EdgeInsets.all(kFixPadding),
          decoration: BoxDecoration(
              color: kAcikArkaplan,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [BoxShadow(color: kLightColor, blurRadius: 2.0)]),
          child: Column(
            children: [
              Text('Akademi Çağrı Hattı', style: kMediumText),
              SizedBox(height: 8.0),
              SizedBox(height: 8.0),
              Text(
                  '''Merhaba Aslı Deniz, Akademi'de Mart görevleri için verilen ek sürenin de sonuna geldik, güncel durumun şöyle:
Teknik Eğitim: Tamamlandı
Coursera: Tamamlandı
Girişimcilik Eğitimi: Tamamlandı
İngilizce Eğitimi: Tamamlandı
Genel Özet: Görevler Tamamlandı
*Bu verilerde 7 Nisan 2023 tarihi baz alınmıştır.
*Lütfen sorular için Slack kanallarından bize ulaşın.''',
                  style: TextStyle(color: Colors.white)),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerRight,
                child: Text('07/04/2023 02:45',
                    style: TextStyle(color: kLightColor)),
              ),
<<<<<<< HEAD
              SizedBox(height: 60),
=======
              SizedBox(height: 10),
>>>>>>> 0d4e93f503d4c3b3e9521ad24118490f72b4f346
              Text('Akademi Önemli Duyuru', style: kMediumText),
              SizedBox(height: 8.0),
              SizedBox(height: 8.0),
              Text(
                '''Bir önceki iletide yer alan Teknik Eğitim Tamamlama Durumu verilerinde bir karışıklık yaşanmış olup, en güncell halini sizlerle tekrardan paylaşıyoruz.
Merhaba Aslı Deniz Ürersoy, Akademi'de Mart ayının sonuna geldik, güncel durumun şöyle:
Teknik Eğitim: Tamamlanmadı
Coursera: Tamamlanmadı
Girişimcilik Eğitimi: Tamamlanmadı
İngilizce Eğitimi: Tamamlandı
Genel Özet: Görevler Tamamlanmadı
Bu listeye göre henüz tamamlamadığın eğitimlerin varsa hala süren var. Son tarih 31 Mart!
*Bu verilerde 27 Mart 2023 tarihi baz alınmıştır.
AKADEMİ GAME & APP JAM'İ BAŞLIYOR!
Tüm detaylar için duyurular kanalını takip et, sorularını Atıl Hoca'ya Cuma günü iletebileceksin
*Lütfen sorular için Slack kanallarından bize ulaşın.''',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerRight,
                child: Text('27/03/2023 04:42',
                    style: TextStyle(color: kLightColor)),
              )
            ],
          ),
        ),
      ]),
    );
  }
}

import 'package:academy/constant.dart';
import 'package:academy/components/defaultAppBar.dart';
import 'package:academy/components/defaultBackButton.dart';
import 'package:flutter/material.dart';

import '../constants/color.dart';

class NotificationPage extends StatefulWidget {
  

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kKoyuArkaplan,
      appBar: AppBar(
          title: const Text('Akademi Duyuru', style: kMediumText,),
          backgroundColor: kKoyuArkaplan,
          centerTitle: true,
        ),
      body: FittedBox(
        child: Container(
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
              Text(
                  'Akademi Çağrı Hattı',
                  style: kMediumText ),
              SizedBox(height: 8.0),
              Image(image: AssetImage(manShoes)),
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
              ),SizedBox(height: 60),Text(
                  'Akademi Önemli Duyuru',
                  style: kMediumText ),
              SizedBox(height: 8.0),
              Image(image: AssetImage(manShoes)),
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
                  style: TextStyle(color: Colors.white), ),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerRight,
                child: Text('27/03/2023 04:42',
                    style: TextStyle(color: kLightColor)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

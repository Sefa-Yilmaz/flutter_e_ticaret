import 'package:flutter/material.dart';

import '../giris/giris_ekrani.dart';
import 'giris_yap_ekrani.dart';

class UygulamaGirisEkrani extends StatelessWidget {
  const UygulamaGirisEkrani({Key? key}) : super(key: key);
//SAYFALAR ARASI GEÇİŞ SAGLAYAN KOD
  static String routeName = '/UygulamaGirisEkrani';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APPBAR KISMI,UYGULAMANIN HANGİ SAYFADA OLDUGUNU ÖOSTEREN KISIM
      appBar: AppBar(
        title: const SizedBox(
          width: 265,
          child: Text(
            'Giriş Yap',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        leading: IconButton(
          //GİRİŞ EKRANINA DÖNÜŞ
          onPressed: () {
            Navigator.pushNamed(context, GrisEkrani.routeName);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      //UYGULAMANIN BİZİ KARŞILADIGI YAZLILAR
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  Text(
                    'TEKRAR HOŞGELDİNİZ',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'E-postanız ve şifrenizle oturum açın\nveya sosyal medyaya devam edin',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 50),
                  //Uygulama Giris Ekrani Button KISMI TASARIMIN GELDİĞİ YER
                  UygulamaGirisEkraniButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

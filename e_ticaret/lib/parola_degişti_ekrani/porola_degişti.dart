import 'package:e_ticaret/constanst.dart';
import 'package:e_ticaret/giris_yap_ekran%C4%B1/giris_yap_ekrani_bar.dart';
import 'package:flutter/material.dart';

class ParolaDegistiEkrani extends StatelessWidget {
  const ParolaDegistiEkrani({Key? key}) : super(key: key);
//SAYFALAR ARASI GEÇİŞ SAGLAYAN KOD
  static String routeName = '/ParolaDegistiEkrani';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APPBAR KISMI,UYGULAMANIN HANGİ SAYFADA OLDUGUNU GÖSTEREN KISIM
      appBar: AppBar(
        title: const SizedBox(
          width: 265,
          child: Text(
            'Şifreniz Degişmiştir',
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
            Navigator.pushNamed(context, UygulamaGirisEkrani.routeName);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      //UYGULAMANIN BİZİ KARŞILADIGI YAZLILAR
      body: Column(
        children: [
          const SizedBox(height: 50),
          Image.asset('assets/images/success.png'),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Şifrenizi degiştirmek için girmiş olduğunuz email adresine şifre değiştirme talebi göderilmiştir',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 350,
            height: 56,
            child: TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: kPrimaryColor),
              onPressed: () {
                Navigator.pushNamed(context, UygulamaGirisEkrani.routeName);
              },
              child: const Text(
                'Giriş Yap ',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

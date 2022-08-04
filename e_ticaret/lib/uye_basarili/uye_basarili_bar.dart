import 'package:e_ticaret/constanst.dart';
import 'package:e_ticaret/giris_yap_ekran%C4%B1/giris_yap_ekrani_bar.dart';
import 'package:flutter/material.dart';

class UyeBarsariliBar extends StatelessWidget {
  const UyeBarsariliBar({Key? key}) : super(key: key);

  //SAYFALAR ARASI GEÇİŞ SAGLAYAN KOD
  static String routeName = '/UyeBarasrili';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APPBAR KISMI,UYGULAMANIN HANGİ SAYFADA OLDUGUNU ÖOSTEREN KISIM
      appBar: AppBar(
        title: const SizedBox(
          width: 265,
          child: Text(
            'Üye Başarılı',
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
            //Navigator.pushNamed(context, GrisEkrani.routeName);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      //UYGULAMANIN BİZİ KARŞILADIGI YAZLILAR
      body: Column(
        children: [
          const SizedBox(height: 20),
          Image.asset(
            "assets/images/success.png",
            height: 350,
            width: 410,
          ),
          const SizedBox(height: 20),
          const Text(
            'Üye Girişi Başarili',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: double.infinity,
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
                'Devam Et',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

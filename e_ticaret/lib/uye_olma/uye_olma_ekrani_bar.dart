import 'package:e_ticaret/uye_olma/uye_olma_ekrani.dart';
import 'package:flutter/material.dart';

import '../giris_yap_ekranı/giris_yap_ekrani_bar.dart';

class UyeOlmaEkraniBar extends StatelessWidget {
  const UyeOlmaEkraniBar({Key? key}) : super(key: key);

  //SAYFALAR ARASI GEÇİŞ SAGLAYAN KOD
  static String routeName = '/UyeOlmaEkraniBar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(
          width: 265,
          child: Text(
            'Üye Ol',
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
            //EMAİL VE ŞİFRE İLE GİRİŞ EKRANI GİDEN KOD
            Navigator.pushNamed(context, UygulamaGirisEkrani.routeName);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                Text(
                  'Hesap Aç ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Bilgilerinizi tamamlayın veya \nsosyal medya ile devam edin',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),
                //ÜYE OLMA EKRANIN TASARIM KODLARI
                UyeOlmaEkrani(),
                SizedBox(height: 10),
                Text(
                  'Devam ederek, şartlarımızı ve \nKoşullarımızı kabul ettiğinizi onaylayın',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

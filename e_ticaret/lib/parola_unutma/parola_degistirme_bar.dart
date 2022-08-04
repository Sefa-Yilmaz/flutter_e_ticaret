import 'package:flutter/material.dart';
import '../giris_yap_ekranı/giris_yap_ekrani_bar.dart';
import 'parola_degistirme_ekrani.dart';

class ParolaDegistirmeBar extends StatelessWidget {
  const ParolaDegistirmeBar({Key? key}) : super(key: key);
//SAYFALAR ARASI GEÇİŞ SAGLAYAN KOD
  static String routeName = '/Parolasegistirmebar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APPBAR KISMI,UYGULAMANIN HANGİ SAYFADA OLDUGUNU ÖOSTEREN KISIM
      appBar: AppBar(
        title: const SizedBox(
          width: 265,
          child: Text(
            'Parola Degiştirme',
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
                    'PAROLANIZI MI UNUTTUNUZ ?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Lütfen e-posta adresinizi girin, \nsize hesabınıza geri dönmeniz için \nbir bağlantı göndereceğiz',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 50),
                  //PAROLA DEGİŞTİRME EKRANIN TASARIM KODLARIN BULUNDUGU YER
                  ParolaDegistirmeEkrani(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:e_ticaret/uye_profil/uye_profil.dart';
import 'package:flutter/material.dart';
import '../giris_yap_ekranı/giris_yap_ekrani_bar.dart';

class UyeProfilBar extends StatelessWidget {
  const UyeProfilBar({Key? key}) : super(key: key);

  static String routeName = '/UyeProfilnBar';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(
          width: 265,
          child: Text(
            'Üye Profil',
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
              children: [
                const Text(
                  'Profil Bilgileri',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Profil Bilgilerinizi tamamlayın ',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 50),
                //ÜYE PROFİL EKARANIN TASARIM KODLARI
                UyeProfil(),
                const Text(
                  '',
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

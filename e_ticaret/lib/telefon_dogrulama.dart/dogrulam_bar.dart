import 'package:e_ticaret/constanst.dart';
import 'package:e_ticaret/telefon_dogrulama.dart/dogrulama.dart';
import 'package:e_ticaret/uye_profil/uye_profil_bar.dart';
import 'package:flutter/material.dart';

class TelefonDogrulama extends StatelessWidget {
  const TelefonDogrulama({Key? key}) : super(key: key);

  static String routeName = '/TelefonDogrulama';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(
          width: 265,
          child: Text(
            'Telefon Doğrulama',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        leading: IconButton(
          //ÜYE PROFİL EKRANINA GİDEN KOD
          onPressed: () {
            Navigator.pushNamed(context, UyeProfilBar.routeName);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Telefon doğrulama',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Text('kodunuzu +1 898 860 ***\'a gönderdik'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('bu kodun süresi dolacak'),
                  TweenAnimationBuilder(
                    tween: IntTween(begin: 30, end: 0),
                    duration: const Duration(seconds: 30),
                    builder: (context, value, child) => Text(
                      '00:${value!.toString()}',
                      style: const TextStyle(color: kPrimaryColor),
                    ),
                    onEnd: () {},
                  )
                ],
              ),
              const SizedBox(height: 50),
              //DOGRULAMA KISMI TASARIMIN GELDİĞİ YER
              const Dogrulama(),
              const SizedBox(height: 50),
              //KODUN YENİDEN GONDERİLECEGİ YER
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Yeniden gönder kodu',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

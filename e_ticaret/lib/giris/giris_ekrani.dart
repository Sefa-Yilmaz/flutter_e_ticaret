import 'package:e_ticaret/constanst.dart';
import 'package:e_ticaret/giris/giris_resim.dart';
import 'package:flutter/material.dart';
import '../giris_yap_ekranı/giris_yap_ekrani_bar.dart';

class GrisEkrani extends StatefulWidget {
  const GrisEkrani({Key? key}) : super(key: key);
  //SAYFALAR ARASI GEÇİŞ SAGLAYAN KOD
  static String routeName = '/grisEkrani';

  @override
  State<GrisEkrani> createState() => _GrisEkraniState();
}

class _GrisEkraniState extends State<GrisEkrani> {
  int kaydirmaBar = 0;

//GİRİŞ EKRANINDAKİ RESİMLER
  List<Map<String, String>> GrisEkraniSurukle = [
    {
      'text': 'Hoşgeldiniz, hadi alışveriş yapın!',
      'image': 'assets/images/splash_1.png'
    },
    {
      'text':
          'İnsanların beyaz mağaza ile bağlantı kurmasına yardımcı oluyoruz?',
      'image': 'assets/images/splash_2.png'
    },
    {
      'text':
          'Alışveriş yapmanın kolay yolunu gösteriyoruz. \nsadece bizimle evde çalış?',
      'image': 'assets/images/splash_3.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          //GİRİŞ EKRANINDAKİ RESİMLERİ SAĞ TARAFA SÜRÜKLEME
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      kaydirmaBar = value;
                    });
                  },
                  itemCount: GrisEkraniSurukle.length,
                  itemBuilder: (context, index) => GrisResim(
                    text: GrisEkraniSurukle[index]['text'].toString(),
                    image: GrisEkraniSurukle[index]['image'].toString(),
                  ),
                ),
              ),
              //RESİMLERİN ALTINDA KAYAN BAR KODLARI
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          GrisEkraniSurukle.length,
                          (index) => buildDot(index: index),
                        ),
                      ),

                      const Spacer(flex: 2),
                      //BUTON KISMI TASARIMI
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
                            //BUTONA BASILDINDA UYGULAMANIN GİRİŞ EKRANINA GECMESİ
                            Navigator.pushNamed(
                                context, UygulamaGirisEkrani.routeName);
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

//RESİMLERİN ALTINDA KAYAN BAR KODLARI
  AnimatedContainer buildDot({index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: kaydirmaBar == index ? 20 : 6,
      decoration: BoxDecoration(
        color: kaydirmaBar == index ? kPrimaryColor : Color(0xFFD8D8D8D),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

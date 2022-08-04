import 'package:e_ticaret/detay/detay_sayfasi.dart';
import 'package:e_ticaret/home/indirim_kismi.dart';
import 'package:e_ticaret/home/kategori.dart';
import 'package:e_ticaret/home/sana_ozel_kard.dart';
import 'package:e_ticaret/home/sana_ozel.dart';
import 'package:e_ticaret/home/urun_arama.dart';
import 'package:e_ticaret/home/alisveris_ve_bildirim_icon.dart';
import 'package:e_ticaret/home/urun_populer.dart';
import 'package:e_ticaret/menu/menu.dart';
import 'package:e_ticaret/model/menu.dart';
import 'package:e_ticaret/model/populer.dart';
import 'package:e_ticaret/odeme/odeme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static String routeName = '/Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //ÜRÜN ARAMA KISMI
                    const UrunArma(),
                    //ZİL İCONU KODLARI VE TASARIMI
                    AlisverisBildirimIcon(
                      icons: 'assets/icons/Cart Icon.svg',
                      tik: () {
                        Navigator.pushNamed(context, odemeEkrani.rounteName);
                      },
                      numara: 0,
                    ),
                    //ALIŞVERİŞ ARABASI İCONU KODLARI VE TASARIMI
                    AlisverisBildirimIcon(
                      numara: 3,
                      tik: () {},
                      icons: 'assets/icons/Bell.svg',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              //İNDİRİM KISMI KODLARI
              const IndirimKismi(),
              const SizedBox(height: 30),
              //KATEGORİ KISMI KODLARI
              const Kategori(),
              const SizedBox(height: 20),
              //SANA ÖZEL VE SANA ÖZEL KART TASAIMI KODLARI
              Column(
                children: [
                  SanaOzel(
                    text: 'Sana Özel',
                    tik: () {},
                  ),
                  const SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SanaOzelKard(
                          img: 'assets/images/Image Banner 2.png',
                          kategori: 'Akıllı Telefon',
                          numara: 18,
                          tik: () {},
                        ),
                        SanaOzelKard(
                          img: 'assets/images/Image Banner 3.png',
                          kategori: 'Moda',
                          numara: 24,
                          tik: () {},
                        ),
                        SanaOzelKard(
                          img: 'assets/images/Image Banner 3.png',
                          kategori: 'Moda',
                          numara: 24,
                          tik: () {},
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              //POPÜLER KISMI KART TASARIMI, POPÜLER KISMIN YAZISI SANA ÖZEL İLE YANI SADECE TEXT KISMI DEGİŞİK
              Column(
                children: [
                  SanaOzel(
                    text: 'Popüler Ürünler',
                    tik: () {},
                  ),
                  const SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                          demoProducts.length,
                          (index) => UrunPopuler(
                            product: demoProducts[index],
                            tik: () => Navigator.pushNamed(
                              context,
                              DetaySayfasi.routName,
                              arguments: UrunDetay(
                                product: demoProducts[index],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
      bottomNavigationBar: menu(selectmenu: Menu.purofile),
    );
  }
}

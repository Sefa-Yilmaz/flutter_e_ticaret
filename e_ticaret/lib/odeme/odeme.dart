import 'package:e_ticaret/home/home.dart';
import 'package:e_ticaret/model/Cart.dart';
import 'package:e_ticaret/odeme/odeme_body.dart';
import 'package:e_ticaret/odeme/toplam.dart';
import 'package:flutter/material.dart';

class odemeEkrani extends StatelessWidget {
  const odemeEkrani({Key? key}) : super(key: key);
  //SAYFALAR ARASI GEÇİŞ SAGLAYAN KOD
  static String rounteName = '/odemeEkrani';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //ÜRÜNLERİN KAÇ TANE OLDUGUNU GÖSTEREN VE HOME SAYFASINA GİDEN KISIM
      appBar: buildAppBar(context),
      //ÜRÜNLERİN SİLME LİSTELEME KISMI KOD
      body: const Body(),
      //ÜRÜNLERİN TOPLAM FİYAT KISMI KOD
      bottomNavigationBar: const Total(),
    );
  }

//buildAppBar TASARIMI VE KODLARI
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pushNamed(context, Home.routeName);
        },
        icon: const Icon(
          Icons.arrow_back_ios,
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Column(
          children: [
            const Text(
              'ÖDEME',
              style: TextStyle(color: Colors.black),
            ),
            //ÜRÜNLERİN LİSTEDEKİ ADETİ
            Text(
              '${demoCarts.length} TANE',
              style: const TextStyle(color: Colors.black38, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}

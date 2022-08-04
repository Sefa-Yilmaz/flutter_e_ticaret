import 'package:e_ticaret/detay/detay_bar.dart';
import 'package:e_ticaret/detay/detay_resim_yazi.dart';
import 'package:e_ticaret/model/populer.dart';
import 'package:flutter/material.dart';

class DetaySayfasi extends StatelessWidget {
  const DetaySayfasi({Key? key}) : super(key: key);
//SAYFALAR ARASI GEÇİŞ SAGLAYAN KOD
  static String routName = '/DetaySayfasi';

  @override
  Widget build(BuildContext context) {
    //ÜRÜNLERİN NASIL ÇAGRILACAGI KOD
    final UrunDetay args =
        ModalRoute.of(context)!.settings.arguments as UrunDetay;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      //APPBAR KISMI TASARIMI
      appBar: DetayAppBar(rating: args.product.rating),
      //RESMİN ALTINDA YAZAN DETAYLI YAZILAR VE TASARIM
      body: detayResimYazi(product: args.product),
    );
  }
}

//MODEL KLASORUNDEKİ VERİLERİN GELDİGİ KISIM
class UrunDetay {
  final Product product;

  UrunDetay({required this.product});
}

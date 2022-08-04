import 'package:e_ticaret/home/kategori_icon.dart';
import 'package:flutter/material.dart';

class Kategori extends StatelessWidget {
  const Kategori({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> kategori = [
      {'text': 'Flash', 'icon': 'assets/icons/FlashIcon.svg'},
      {'text': 'Fatura', 'icon': 'assets/icons/BillIcon.svg'},
      {'text': 'Oyun', 'icon': 'assets/icons/GameIcon.svg'},
      {'text': 'Günlük Hediye', 'icon': 'assets/icons/GiftIcon.svg'},
      {'text': 'Daha Fazla', 'icon': 'assets/icons/Discover.svg'},
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //KATEGORİ RESİM VE YAZILARIN GELDİGİ KOD
          ...List.generate(
            kategori.length,
            (index) => KategoriIcona(
              icon: kategori[index]['icon'],
              text: kategori[index]['text'],
              tik: () {},
            ),
          )
        ],
      ),
    );
  }
}

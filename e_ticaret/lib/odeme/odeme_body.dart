import 'package:e_ticaret/model/Cart.dart';
import 'package:e_ticaret/odeme/odeme_kart_tasarim.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      //ÜRÜNLERİ LİSTELEYEN KISIM
      child: ListView.builder(
        //ÜRÜNLERİN KACTANE OLDUGUNU GÖSTEREN KOD
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          //ÜRÜNLERİ SİLEN KOD VE TASARIMI
          child: Dismissible(
            key: Key(demoCarts[index].product.id.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(15),
              ),
              //ÜRÜNLERİN SİLME İCONU VE TASARIMI
              child: Row(
                children: [
                  const Spacer(),
                  SvgPicture.asset(
                    'assets/icons/Trash.svg',
                    height: 30,
                  )
                ],
              ),
            ),
            //ÜRÜNLERİ SİLME KONTOLÜNÜ YAPAN KOD
            onDismissed: (direction) {
              setState(() {
                demoCarts.removeAt(index);
              });
            },
            //ÜRÜNLEİN LİSTELEMİŞ HALDE TASARIMININ YAPILDIGI YER

            child: kartTasarim(kart: demoCarts[index]),
          ),
        ),
      ),
    );
  }
}

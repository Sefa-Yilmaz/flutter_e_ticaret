import 'package:e_ticaret/constanst.dart';
import 'package:e_ticaret/model/Cart.dart';
import 'package:flutter/material.dart';

class kartTasarim extends StatelessWidget {
  final Cart kart;
  const kartTasarim({Key? key, required this.kart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //ÜRÜNLERİN ÖDEME KISMINDAKİ TASARIMI
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(kart.product.images[0]),
            ),
          ),
        ),
        const SizedBox(width: 20),
        //ÜRÜNLERİN İSİM VE FİYAT, ADET KISMI
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              kart.product.title,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 10),
            Text.rich(
              TextSpan(
                  text: '\$${kart.product.price}',
                  style: const TextStyle(color: kPrimaryColor),
                  children: [
                    TextSpan(
                      text: ' x${kart.numOfItem}',
                      style: const TextStyle(color: kTextColor),
                    )
                  ]),
            )
          ],
        )
      ],
    );
  }
}

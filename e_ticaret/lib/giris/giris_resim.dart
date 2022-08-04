import 'package:e_ticaret/constanst.dart';
import 'package:flutter/material.dart';

class GrisResim extends StatelessWidget {
  final String text;
  final String image;
  const GrisResim({Key? key, required this.text, required this.image})
      : super(key: key);
//UYGULAMAYA GİRİŞ EKRANI KISMI
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        const Text(
          'GİRİŞ EKRANI',
          style: TextStyle(
            fontSize: 36,
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
        Image.asset(
          image,
          height: 265,
          width: 235,
        )
      ],
    );
  }
}

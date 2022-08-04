import 'package:flutter/material.dart';

class SanaOzel extends StatelessWidget {
  final String text;
  final GestureTapCallback tik;
  const SanaOzel({Key? key, required this.text, required this.tik})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //SANO ÖZEL VE POPÜLER KISMIN YAZILARIN RENK VE YAZI BOYUTLARI
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 18, color: Colors.black),
          ),
          GestureDetector(
            onTap: tik,
            child: const Text('Daha Fazla'),
          )
        ],
      ),
    );
  }
}

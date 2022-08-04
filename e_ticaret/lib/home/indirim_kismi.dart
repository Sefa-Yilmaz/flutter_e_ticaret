import 'package:flutter/material.dart';

class IndirimKismi extends StatelessWidget {
  const IndirimKismi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //İNDİRİM KISMI YAZI VE TASARIMI
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text.rich(
        TextSpan(
          text: 'kapatıyoz\n',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: 'indirim %50',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KategoriIcona extends StatelessWidget {
  final String icon;
  final String text;
  final GestureTapCallback tik;

  const KategoriIcona({
    Key? key,
    required this.icon,
    required this.text,
    required this.tik,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //KATEGORİ İCON KISMI TASARIMI
    return GestureDetector(
      onTap: tik,
      child: SizedBox(
        width: 55,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

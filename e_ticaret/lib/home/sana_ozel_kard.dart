import 'package:flutter/material.dart';

class SanaOzelKard extends StatelessWidget {
  final String kategori;
  final String img;
  final int numara;
  final GestureTapCallback tik;

  const SanaOzelKard({
    Key? key,
    required this.img,
    required this.kategori,
    required this.numara,
    required this.tik,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //SANA ÖZEL KARD KISMI TASARIMI VE YAZILARI
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 242,
        height: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                img,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text.rich(
                  TextSpan(
                    style: const TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: '$kategori\n',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: '$numara Markalar')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:e_ticaret/constanst.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AlisverisBildirimIcon extends StatelessWidget {
  final int numara;
  final String icons;
  final GestureTapCallback tik;

  const AlisverisBildirimIcon({
    Key? key,
    required this.numara,
    required this.tik,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //ALIŞVERİŞ BİLDİRİM İCIONLARI
    return InkWell(
      onTap: tik,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.3),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(icons),
          ),
          if (numara != 0)
            Positioned(
              top: -1,
              right: 0,
              child: Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1.5,
                    color: Colors.white,
                  ),
                ),
                child: Center(
                  child: Text(
                    '${numara}',
                    style: const TextStyle(
                      fontSize: 10,
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}

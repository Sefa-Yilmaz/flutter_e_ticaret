import 'package:e_ticaret/constanst.dart';
import 'package:e_ticaret/detay/detay_resim.dart';
import 'package:e_ticaret/model/populer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class detayResimYazi extends StatelessWidget {
  //MODEL KISMINDEN VERİLERİ GETİREN YER
  final Product product;
  const detayResimYazi({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //RESİMLERİN SIRASI
    int selectedColor = 3;

    return SingleChildScrollView(
      child: Column(
        children: [
          //DETAY RESİM KISMI
          DetayResim(product: product),
          //DETAY RESİM YAILARI
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.only(top: 20),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            //RESİM BASLIK YERİ
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  //RESİM BAŞLIK KISMI
                  child: Text(
                    product.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                const SizedBox(height: 5),
                //RESMİN BEYENME KISMI
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    width: 64,
                    decoration: BoxDecoration(
                        color: product.isFavourite
                            ? Colors.grey.shade300
                            : Colors.red,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                    child: SvgPicture.asset(
                      'assets/icons/Heart Icon_2.svg',
                      color: product.isFavourite ? Colors.red : Colors.white,
                    ),
                  ),
                ),
                //RESMİN ACIKLAMA KISMI
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 64),
                  child: Text(
                    product.description,
                    maxLines: 3,
                  ),
                ),
                //RESMİN DAHA FAZLA KISMI
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: const [
                        Text(
                          'Daha fazla ayrıntı gör',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                          color: kPrimaryColor,
                        )
                      ],
                    ),
                  ),
                ),
                //RESMİDEKİ ÜRÜN RENK KISNMIN TASARIMI
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    padding: const EdgeInsets.only(top: 5),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      //RENKLERİN GELDİĞİ KISIM
                      child: Row(
                        children: [
                          ...List.generate(
                            product.colors.length,
                            (index) => detayRenk(
                              color: product.colors[index],
                              isSelcted: selectedColor == index,
                            ),
                          ),
                          const SizedBox(width: 55),
                          //ÜRÜNDEN KAAÇ TANE ALINACAĞI KISMI(-)
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60),
                                ),
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.zero,
                              ),
                              onPressed: () => Navigator.pop(context),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(width: 25),
                          //ÜRÜNDEN KAAÇ TANE ALINACAĞI KISMI(+)
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60),
                                ),
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.zero,
                              ),
                              onPressed: () => Navigator.pop(context),
                              child: const Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                //ÜRÜN SATIN ALAM BUTTONU
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: kPrimaryColor),
                      onPressed: () {},
                      child: const Text(
                        'Satın Al',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// RENKLERİN TASARIMI VE NERDEN GELDİGİ
class detayRenk extends StatelessWidget {
  const detayRenk({
    Key? key,
    required this.color,
    this.isSelcted = false,
  }) : super(key: key);
  final Color color;
  final bool isSelcted;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      padding: EdgeInsets.all(5),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border:
            Border.all(color: isSelcted ? kPrimaryColor : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

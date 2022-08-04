import 'package:e_ticaret/constanst.dart';
import 'package:e_ticaret/model/populer.dart';
import 'package:flutter/material.dart';

class DetayResim extends StatefulWidget {
  //MODEL KISMINDEN VERİLERİ GETİREN YER
  final Product product;

  const DetayResim({Key? key, required this.product}) : super(key: key);

  @override
  State<DetayResim> createState() => _DetayResimState();
}

class _DetayResimState extends State<DetayResim> {
  //SECİLEN RESİM SIRASI
  int secilenResim = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //ÜRÜN RESMİNİ GETİREN YER
          SizedBox(
            width: 240,
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                widget.product.images[secilenResim],
              ),
            ),
          ),
          //ÜRÜNÜN ALTINDA BULIUNAN RESİMLERİ GETİREN KOD
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  widget.product.images.length, (index) => kucukresim(index))
            ],
          ),
        ],
      ),
    );
  }

//ÜRÜNÜN ALTINDA BULIUNAN RESİMLERİ BOYUT VE NERDEN GELDİKLERİ
  GestureDetector kucukresim(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          secilenResim = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.all(8),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color:
                  secilenResim == index ? kPrimaryColor : Colors.transparent),
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}

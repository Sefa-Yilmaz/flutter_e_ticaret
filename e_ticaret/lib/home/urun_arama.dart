import 'package:e_ticaret/constanst.dart';
import 'package:flutter/material.dart';

class UrunArma extends StatelessWidget {
  const UrunArma({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //ÜRÜN ARAMA KISMI TASARIMI
    return Container(
      width: 250,
      height: 55,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        onChanged: (value) {},
        decoration: const InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: 'Ürün Arama',
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
        ),
      ),
    );
  }
}

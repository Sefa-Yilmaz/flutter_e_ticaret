import 'package:e_ticaret/constanst.dart';
import 'package:e_ticaret/uye_basarili/uye_basarili_bar.dart';
import 'package:flutter/material.dart';

class Dogrulama extends StatefulWidget {
  const Dogrulama({Key? key}) : super(key: key);

  @override
  State<Dogrulama> createState() => _DogrulamaState();
}

class _DogrulamaState extends State<Dogrulama> {
//UYGULAMADA PİN KODLARININ SIRALAMASI
  late FocusNode pin2;
  late FocusNode pin3;
  late FocusNode pin4;

  @override
  void initState() {
    super.initState();
    pin2 = FocusNode();
    pin3 = FocusNode();
    pin4 = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2.dispose();
    pin3.dispose();
    pin4.dispose();
  }

  void nextField({String? value, FocusNode? focusNode}) {
    if (value?.length == 1) {
      focusNode?.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //PİN KODLARIN 1. KUTUSU
              SizedBox(
                width: 60,
                child: TextFormField(
                  autofocus: true,
                  obscureText: true,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: kPrimaryColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: kTextColor),
                    ),
                  ),
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin2);
                  },
                ),
              ),
              //PİN KODLARIN 2. KUTUSU
              SizedBox(
                width: 60,
                child: TextFormField(
                  focusNode: pin2,
                  obscureText: true,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: kPrimaryColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: kTextColor),
                    ),
                  ),
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin3);
                  },
                ),
              ),
              //PİN KODLARIN 3. KUTUSU
              SizedBox(
                width: 60,
                child: TextFormField(
                  focusNode: pin3,
                  obscureText: true,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: kPrimaryColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: kTextColor),
                    ),
                  ),
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin4);
                  },
                ),
              ),
              //PİN KODLARIN 4. KUTUSU
              SizedBox(
                width: 60,
                child: TextFormField(
                  focusNode: pin4,
                  obscureText: true,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: kPrimaryColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: kTextColor),
                    ),
                  ),
                  onChanged: (value) {
                    pin4.unfocus();
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),

          //BUTON KISMI TASARIMI
          SizedBox(
            width: 255,
            height: 56,
            child: TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: kPrimaryColor),
              onPressed: () {
                Navigator.pushNamed(context, UyeBarsariliBar.routeName);
              },
              child: const Text(
                'Devam Et',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

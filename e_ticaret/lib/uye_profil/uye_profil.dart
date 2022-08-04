import 'package:e_ticaret/constanst.dart';
import 'package:e_ticaret/giris_yap_ekran%C4%B1/giris_yap_ekrani_eror.dart';
import 'package:e_ticaret/telefon_dogrulama.dart/dogrulam_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../giris_yap_ekranı/giris_yap_ekrani_bar.dart';

class UyeProfil extends StatefulWidget {
  UyeProfil({Key? key}) : super(key: key);

  @override
  State<UyeProfil> createState() => _UyeProfilState();
}

class _UyeProfilState extends State<UyeProfil> {
  final _fromKey = GlobalKey<FormState>();
  String? ad;
  String? soyad;
  String? tel;
  String? adres;
  bool remember = false;
  final List<String> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error!);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromKey,
      child: Column(
        children: [
          //ADINIZI GİRİNİZ TEXT KISMI, TASARIMI VE KONTROLÜ
          TextFormField(
            onSaved: (newValue) => ad = newValue!,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kNamelNullError);
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kNamelNullError);
                return "";
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Adınız',
              hintText: 'Adınızı Giriniz',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: Padding(
                //email ve şifre iconları
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SvgPicture.asset('assets/icons/User.svg'),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 42,
                vertical: 20,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: const BorderSide(color: kPrimaryColor),
                gapPadding: 10,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: const BorderSide(color: kTextColor),
                gapPadding: 10,
              ),
            ),
          ),
          const SizedBox(height: 15),
          //SOYADINIZI GİRİNİZ TEXT KISMI, TASARIMI VE KONTROLÜ
          TextFormField(
            onSaved: (newValue) => soyad = newValue!,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: ksNamelNullError);
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: ksNamelNullError);
                return "";
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Soyadınız',
              hintText: 'Soyadınızı Giriniz',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: Padding(
                //email ve şifre iconları
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SvgPicture.asset('assets/icons/User.svg'),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 42,
                vertical: 20,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: const BorderSide(color: kPrimaryColor),
                gapPadding: 10,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: const BorderSide(color: kTextColor),
                gapPadding: 10,
              ),
            ),
          ),
          const SizedBox(height: 15),
          //TELEFON NUMARASI TEXT KISMI, TASARIMI VE KONTROLÜ
          TextFormField(
            onSaved: (newValue) => tel = newValue!,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kPhoneNumberNullError);
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kPhoneNumberNullError);
                return "";
              }
              return null;
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Telefon',
              hintText: 'Telefon Numarnızı Giriniz',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: Padding(
                //email ve şifre iconları
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SvgPicture.asset('assets/icons/Phone.svg'),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 42,
                vertical: 20,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: const BorderSide(color: kPrimaryColor),
                gapPadding: 10,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: const BorderSide(color: kTextColor),
                gapPadding: 10,
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Text('Telefon numaranıza dogrulama gönderilecektir?'),
          const SizedBox(height: 15),
          //ADRES TEXT KISMI, TASARIMI VE KONTROLÜ
          TextFormField(
            onSaved: (newValue) => adres = newValue!,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kAddressNullError);
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kAddressNullError);
                return "";
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Adres',
              hintText: 'Adresinizi Giriniz',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: Padding(
                //email ve şifre iconları
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SvgPicture.asset('assets/icons/Location point.svg'),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 42,
                vertical: 20,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: const BorderSide(color: kPrimaryColor),
                gapPadding: 10,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: const BorderSide(color: kTextColor),
                gapPadding: 10,
              ),
            ),
          ),
          const SizedBox(height: 15),
          //ERORR KISMI
          fromErorr(errors: errors),
          const SizedBox(height: 15),
          //BUTON KISMI TASARIMI
          SizedBox(
            width: double.infinity,
            height: 56,
            child: TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: kPrimaryColor),
              onPressed: () {
                if (_fromKey.currentState!.validate()) {
                  //_fromKey.currentState!.save();
                  Navigator.pushNamed(context, TelefonDogrulama.routeName);
                }
              },
              child: const Text(
                'Devam Et',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}

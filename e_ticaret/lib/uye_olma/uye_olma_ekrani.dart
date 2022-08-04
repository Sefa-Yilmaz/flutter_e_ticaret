import 'package:e_ticaret/constanst.dart';
import 'package:e_ticaret/giris_yap_ekran%C4%B1/giris_yap_ekrani_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../giris_yap_ekranı/giris_yap_ekrani_eror.dart';
import '../uye_profil/uye_profil_bar.dart';

class UyeOlmaEkrani extends StatefulWidget {
  const UyeOlmaEkrani({Key? key}) : super(key: key);

  @override
  State<UyeOlmaEkrani> createState() => _UyeOlmaEkraniState();
}

class _UyeOlmaEkraniState extends State<UyeOlmaEkrani> {
  final _fromKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? conform_password;
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
          //EMAİL TEXT KISMI, TASARIMI VE KONTROLÜ
          TextFormField(
            onSaved: (newValue) => email = newValue!,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kEmailNullError);
              } else if (emailValidatorRegExp.hasMatch(value)) {
                removeError(error: kInvalidEmailError);
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kEmailNullError);
                return "";
              } else if (!emailValidatorRegExp.hasMatch(value)) {
                addError(error: kInvalidEmailError);
                return "";
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Email giriniz',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: Padding(
                //email ve şifre iconları
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SvgPicture.asset('assets/icons/Mail.svg'),
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
          //ŞİFRE TEXT KISMI, TASARIMI VE KONTROLÜ
          TextFormField(
            onSaved: (newValue) => password = newValue!,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kPassNullError);
              } else if (value.length >= 8) {
                removeError(error: kShortPassError);
              }
              password = value;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kPassNullError);
                return "";
              } else if (value.length < 8) {
                addError(error: kShortPassError);
                return "";
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Şifre',
              hintText: 'Şifrenizi Giriniz',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: Padding(
                //email ve şifre iconları
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SvgPicture.asset('assets/icons/Lock.svg'),
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
          //ŞİFRE TEKRAR TEXT KISMI, TASARIMI VE KONTROLÜ
          TextFormField(
            onSaved: (newValue) => conform_password = newValue!,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kPassNullError);
              } else if (value.isNotEmpty && password == conform_password) {
                removeError(error: kMatchPassError);
              }
              conform_password = value;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kPassNullError);
                return "";
              } else if ((password != value)) {
                addError(error: kMatchPassError);
                return "";
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Şifre',
              hintText: 'Şifrenizi Giriniz',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: Padding(
                //email ve şifre iconları
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SvgPicture.asset('assets/icons/Lock.svg'),
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
                  _fromKey.currentState!.save();
                  Navigator.pushNamed(context, UyeProfilBar.routeName);
                }
              },
              child: const Text(
                'Devam Et',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 15),
          //SOSYAL MEDAYA PLATFORMLAROI TASARIMI
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset('assets/icons/facebook-2.svg'),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset('assets/icons/google-icon.svg'),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset('assets/icons/twitter.svg'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          //HESABINIZ VARMI KISMI
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hesabınız Var mı? ',
                style: TextStyle(fontSize: 16),
              ),
              GestureDetector(
                onTap: () =>
                    //GİRİŞ EKRANINA GİDEN KOD
                    Navigator.pushNamed(context, UygulamaGirisEkrani.routeName),
                child: const Text(
                  'Giriş Yap',
                  style: TextStyle(
                    fontSize: 16,
                    color: kPrimaryColor,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

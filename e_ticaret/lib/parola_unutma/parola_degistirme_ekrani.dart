import 'package:e_ticaret/constanst.dart';
import 'package:e_ticaret/parola_degi%C5%9Fti_ekrani/porola_degi%C5%9Fti.dart';
import 'package:e_ticaret/uye_olma/uye_olma_ekrani_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../giris_yap_ekranı/giris_yap_ekrani_bar.dart';
import '../giris_yap_ekranı/giris_yap_ekrani_eror.dart';

class ParolaDegistirmeEkrani extends StatefulWidget {
  const ParolaDegistirmeEkrani({Key? key}) : super(key: key);

  @override
  State<ParolaDegistirmeEkrani> createState() => _ParolaDegistirmeEkraniState();
}

class _ParolaDegistirmeEkraniState extends State<ParolaDegistirmeEkrani> {
  final _fromKey = GlobalKey<FormState>();
  late String email;
  late String password;
  late bool remember = false;
  final List<String> errors = [];
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
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kAddressNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
                return '';
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
                return '';
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
          const SizedBox(height: 20),
          //ERORR KISMI
          fromErorr(errors: errors),
          const SizedBox(height: 20),
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
                  Navigator.pushNamed(context, ParolaDegistiEkrani.routeName);
                }
              },
              child: const Text(
                'Devam Et',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 35),
          //ÜYE OLAMA KISMI TASARIMI
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hesabınız yok mu? ',
                style: TextStyle(fontSize: 16),
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, UyeOlmaEkraniBar.routeName),
                child: const Text(
                  'Üye Ol',
                  style: TextStyle(
                    fontSize: 16,
                    color: kPrimaryColor,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 35),
          //GİRİŞ YAPMA KISMI TASARIMI
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

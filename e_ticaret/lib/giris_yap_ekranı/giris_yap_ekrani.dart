import 'package:e_ticaret/constanst.dart';
import 'package:e_ticaret/home/home.dart';
import 'package:e_ticaret/parola_unutma/parola_degistirme_bar.dart';
import 'package:e_ticaret/uye_olma/uye_olma_ekrani_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'giris_yap_ekrani_eror.dart';

class UygulamaGirisEkraniButton extends StatefulWidget {
  const UygulamaGirisEkraniButton({Key? key}) : super(key: key);

  @override
  State<UygulamaGirisEkraniButton> createState() =>
      _UygulamaGirisEkraniButtonState();
}

class _UygulamaGirisEkraniButtonState extends State<UygulamaGirisEkraniButton> {
  final _fromKey = GlobalKey<FormState>();
  late String email;
  late String password;
  late bool remember = false;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    //UYGULAMA EMAİL VE ŞİFRE GİRİŞ YERİ
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
          const SizedBox(height: 15),
          //ŞİFRE TEXT KISMI, TASARIMI VE KONTROLÜ
          TextFormField(
            onSaved: (newValue) => password = newValue!,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kPassNullError)) {
                setState(() {
                  errors.remove(kPassNullError);
                });
              } else if (value.length >= 8 &&
                  errors.contains(kShortPassError)) {
                setState(() {
                  errors.remove(kShortPassError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kPassNullError)) {
                setState(() {
                  errors.add(kPassNullError);
                });
                return '';
              } else if (value.length < 8 &&
                  !errors.contains(kShortPassError)) {
                setState(() {
                  errors.add(kShortPassError);
                });
                return '';
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
          //BENİ HATIRLA VE PAROLA UNUTUM KISMI tasarımı
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                  });
                },
              ),
              const Text('Beni hatırla'),
              const Spacer(),
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, ParolaDegistirmeBar.routeName),
                child: const Text(
                  'Parolanızı mı unuttunuz',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
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
                  Navigator.pushNamed(context, Home.routeName);
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
          )
        ],
      ),
    );
  }
}

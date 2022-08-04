import 'package:flutter/material.dart';

// RENKLERİN CEKİLDİGİ YER
const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

//UYGULAMADA ANA GİRİŞTE GELEN RESİMLERİ DÖNDÜREN KISIM
const kAnimationDuration = Duration(milliseconds: 200);

//EMAİL VE PAROLA KONTROL VE ERROR KISMIN YAZILARI
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Lütfen E-postanızı girin";
const String kInvalidEmailError = "Lütfen Geçerli E-postayı Girin";
const String kPassNullError = "Şifrenizi giriniz Lütfen";
const String kShortPassError = "Şifre çok kısa";
const String kMatchPassError = "Şifreler eşleşmiyor";
const String kNamelNullError = "Lütfen adınızı giriniz";
const String ksNamelNullError = "Lütfen Soyadınızı giriniz";
const String kPhoneNumberNullError = "Lütfen telefon numaranızı girin";
const String kAddressNullError = "Lütfen adresinizi girin";



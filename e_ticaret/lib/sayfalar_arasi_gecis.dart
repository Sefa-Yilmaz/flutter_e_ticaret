import 'package:e_ticaret/detay/detay_sayfasi.dart';
import 'package:e_ticaret/giris/giris_ekrani.dart';
import 'package:e_ticaret/home/home.dart';
import 'package:e_ticaret/odeme/odeme.dart';
import 'package:e_ticaret/parola_degi%C5%9Fti_ekrani/porola_degi%C5%9Fti.dart';
import 'package:e_ticaret/parola_unutma/parola_degistirme_bar.dart';
import 'package:e_ticaret/profil/profil.dart';
import 'package:e_ticaret/telefon_dogrulama.dart/dogrulam_bar.dart';
import 'package:e_ticaret/uye_basarili/uye_basarili_bar.dart';
import 'package:e_ticaret/uye_olma/uye_olma_ekrani_bar.dart';
import 'package:e_ticaret/uye_profil/uye_profil_bar.dart';
import 'package:flutter/material.dart';
import 'giris_yap_ekranı/giris_yap_ekrani_bar.dart';

//SAYFALAR ARASI GECİŞ YERİ
final Map<String, WidgetBuilder> routes = {
  GrisEkrani.routeName: (context) => const GrisEkrani(),
  UygulamaGirisEkrani.routeName: (context) => const UygulamaGirisEkrani(),
  ParolaDegistirmeBar.routeName: (context) => const ParolaDegistirmeBar(),
  ParolaDegistiEkrani.routeName: (context) => const ParolaDegistiEkrani(),
  UyeOlmaEkraniBar.routeName: (context) => const UyeOlmaEkraniBar(),
  UyeProfilBar.routeName: (context) => const UyeProfilBar(),
  TelefonDogrulama.routeName: (context) => const TelefonDogrulama(),
  UyeBarsariliBar.routeName: (context) => const UyeBarsariliBar(),
  Home.routeName: (context) => const Home(),
  DetaySayfasi.routName: (context) => const DetaySayfasi(),
  odemeEkrani.rounteName: (context) => const odemeEkrani(),
  Profil.routeName: (context) => const Profil(),
};

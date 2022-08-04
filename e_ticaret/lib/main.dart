import 'package:e_ticaret/constanst.dart';
import 'package:e_ticaret/giris/giris_ekrani.dart';
import 'package:e_ticaret/sayfalar_arasi_gecis.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Muli',
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
      ),
      //home: const GrisEkrani(),
      initialRoute: GrisEkrani.routeName,
      routes: routes,
    );
  }
}

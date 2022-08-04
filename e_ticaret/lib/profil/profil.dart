import 'package:e_ticaret/menu/menu.dart';
import 'package:e_ticaret/model/menu.dart';
import 'package:e_ticaret/profil/profil_body.dart';
import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  static String routeName = '/Profil';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(
          width: 385,
          child: Text(
            'Profil',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: ProfilBody(),
      bottomNavigationBar: menu(selectmenu: Menu.purofile),
    );
  }
}

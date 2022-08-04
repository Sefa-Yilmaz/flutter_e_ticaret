import 'package:e_ticaret/constanst.dart';
import 'package:e_ticaret/profil/profil_menu.dart';
import 'package:e_ticaret/profil/profil_resim.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilBody extends StatelessWidget {
  const ProfilBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfilResim(),
          SizedBox(height: 20),
          profilMenu(
            icon: 'assets/icons/User Icon.svg',
            text: 'My AASDASD',
            tik: () {},
          ),
          profilMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            tik: () {},
          ),
          profilMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            tik: () {},
          ),
          profilMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            tik: () {},
          ),
          profilMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            tik: () {},
          ),
        ],
      ),
    );
  }
}

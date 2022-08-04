import 'package:e_ticaret/constanst.dart';
import 'package:e_ticaret/home/home.dart';
import 'package:e_ticaret/model/menu.dart';
import 'package:e_ticaret/profil/profil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class menu extends StatelessWidget {
  const menu({Key? key, required this.selectmenu}) : super(key: key);
  final Menu selectmenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveteIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Colors.grey,
          )
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () => Navigator.pushNamed(context, Home.routeName),
              icon: SvgPicture.asset(
                'assets/icons/Shop Icon.svg',
                color: Menu.home == selectmenu
                    ? kPrimaryColor
                    : inActiveteIconColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/Heart Icon.svg',
                color: Menu.favorite == selectmenu
                    ? kPrimaryColor
                    : inActiveteIconColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/Chat bubble Icon.svg',
                color: Menu.message == selectmenu
                    ? kPrimaryColor
                    : inActiveteIconColor,
              ),
            ),
            IconButton(
              onPressed: () => Navigator.pushNamed(context, Profil.routeName),
              icon: SvgPicture.asset(
                'assets/icons/User Icon.svg',
                color: Menu.purofile == selectmenu
                    ? kPrimaryColor
                    : inActiveteIconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

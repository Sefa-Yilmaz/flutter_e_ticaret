import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class fromErorr extends StatelessWidget {
  final List<String> errors;
  const fromErorr({Key? key, required this.errors}) : super(key: key);
//ERRRO KISMI KODLARI
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => ErrorText(
          error: errors[index],
        ),
      ),
    );
  }
//ERROR KISMI TASARIMI
  Row ErrorText({required String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/Error.svg',
          height: 14,
          width: 14,
        ),
        const SizedBox(width: 10),
        Text(error),
      ],
    );
  }
}

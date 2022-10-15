import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/padding.dart';

class CustomButtonBox extends StatelessWidget {
  const CustomButtonBox({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: fitSpacer),
      width: size.width,
      height: 50.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: yellow.withOpacity(0.7),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: yellow.withOpacity(0.5),
            spreadRadius: 0.0,
            blurRadius: 6.0,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: textBlack,
        ),
      ),
    );
  }
}

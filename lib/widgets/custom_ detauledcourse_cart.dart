import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/padding.dart';

class custom_detauledcourse extends StatelessWidget {
  const custom_detauledcourse({
    Key? key,
    required this.index,
    required this.title,
    required this.length,
  }) : super(key: key);
  final double index;
  final String title;
  final double length;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: miniSpacer),
      width: size.width,
      height: 60,
      decoration: BoxDecoration(
        color: backgroundBlack,
        border: Border.all(
          width: 1, //                   <--- border width here
        ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: yellow,
            blurRadius: 2,
            offset: Offset(0, 0),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 10),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: yellow,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(
              Icons.play_arrow_rounded,
              color: backgroundBlack,
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 200,
            height: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${index} - ${title}",
                  style: TextStyle(
                    color: yellow,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "${length} Lectures - 30 total length",
                  style: TextStyle(
                    color: textWhite.withOpacity(.8),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

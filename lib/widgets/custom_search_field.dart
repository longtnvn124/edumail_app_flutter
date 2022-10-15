import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/colors.dart';
import '../theme/padding.dart';
import '../utils/contant.dart';

class CustomSearchField extends StatefulWidget {
  const CustomSearchField({
    Key? key,
    required this.hintField,
    this.backgroundColor,
  }) : super(key: key);

  final String hintField;
  final Color? backgroundColor;

  @override
  _CustomSearchFieldState createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends State<CustomSearchField> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: spacer,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(7.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            color: yellow,
            blurRadius: 2,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 40.0,
            width: 40.0,
            alignment: Alignment.center,
            child: Container(
              child: SvgPicture.asset(
                assetImg + 'search_icon.svg',
                color: textWhite.withOpacity(0.5),
                height: 15.0,
              ),
            ),
          ),
          Flexible(
            child: Container(
              width: size.width,
              height: 60,
              alignment: Alignment.topCenter,
              child: TextField(
                style: TextStyle(fontSize: 15, color: textWhite),
                cursorColor: textWhite,
                decoration: InputDecoration(
                  hintText: widget.hintField,
                  hintStyle: TextStyle(
                    fontSize: 15,
                    color: textWhite.withOpacity(0.5),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(width: 10.0),
          Container(
            height: 40.0,
            width: 40.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: yellow.withOpacity(0.7),
              borderRadius: BorderRadius.circular(7.0),
              boxShadow: [
                BoxShadow(
                  color: yellow.withOpacity(0.5),
                  spreadRadius: 0.0,
                  blurRadius: 6.0,
                  offset: Offset(0, 2),
                )
              ],
            ),
            child: Container(
              child: SvgPicture.asset(
                assetImg + 'filter_icon.svg',
                color: textBlack,
                height: 13.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

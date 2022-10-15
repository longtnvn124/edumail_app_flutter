import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/padding.dart';

class All_Course_Cart extends StatefulWidget {
  const All_Course_Cart({
    Key? key,
    required this.image,
    required this.title,
    required this.userName,
    required this.price,
  }) : super(key: key);

  final String image;
  final String title;
  final String userName;
  final String price;

  @override
  State<All_Course_Cart> createState() => _All_Course_CartState();
}

class _All_Course_CartState extends State<All_Course_Cart> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: fitSpacer),
      height: 80,
      decoration: BoxDecoration(
        color: backgroundBlack,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            offset: Offset(0, 0),
            color: yellow,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, right: 5),
            width: 60,
            height: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(widget.image, fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: 5),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width * .65,
                padding: const EdgeInsets.only(
                  right: 7.0,
                ),
                child: Text(
                  widget.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: secondary.withOpacity(.9),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                // margin: EdgeInsets.only(right: 10),
                width: size.width * .55,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Instrutor:${widget.userName}",
                      style: TextStyle(
                        color: textWhite.withOpacity(.8),
                        fontSize: 11,
                      ),
                    ),
                    // SizedBox(
                    //   width: 100,
                    // ),
                    Text(
                      "\$${widget.price}",
                      style: TextStyle(
                        color: yellow,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

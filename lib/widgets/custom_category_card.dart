import '../Pages/categories_page.dart';
import '../datas/category_json.dart';
import '../theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCategoryCard extends StatelessWidget {
  const CustomCategoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(HomePageCategoryJson.length, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CategoriesPage(),
                  maintainState: false,
                ),
              );
            },
            child: Container(
              height: size.width * .25,
              width: size.width * .25,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: backgroundBlack,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: yellow.withOpacity(0.1),
                    blurRadius: 15.0,
                    offset: Offset(0, 7),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 35.0,
                    width: 35.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: yellow.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(15.0),
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
                        HomePageCategoryJson[index]['icon'],
                        color: textBlack,
                        width: 15.0,
                      ),
                    ),
                  ),
                  Text(
                    HomePageCategoryJson[index]['title'],
                    style: TextStyle(
                      color: yellow,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 0.0),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

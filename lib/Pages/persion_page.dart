import 'package:flutter/material.dart';


import '../datas/category_list_json.dart';
import '../theme/colors.dart';
import '../theme/padding.dart';
import '../widgets/all_course_cart.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_title.dart';

class PersionPage extends StatefulWidget {
  const PersionPage({Key? key}) : super(key: key);

  @override
  State<PersionPage> createState() => _PersionPageState();
}

class _PersionPageState extends State<PersionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlack,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          brightness: Brightness.dark,
        ),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: fitSpacer),
            child: CustomAppBar(
              backgroundColor: backgroundBlack,
              title: "Lecturer Detail",
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: fitSpacer,
                ),
                Container(
                  width: size.width * .35,
                  height: size.width * .35,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.network(
                      popular_lecturer[0]["user_profile"],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  popular_lecturer[0]["user_name"],
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: yellow.withOpacity(0.7),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  popular_lecturer[0]["course"],
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: textWhite.withOpacity(0.7),
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  padding: EdgeInsets.only(left: appPadding, right: appPadding),
                  height: 20,
                  child: Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Student',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            color: textWhite.withOpacity(0.8),
                          ),
                        ),
                        Text(
                          'Total ourse',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            color: textWhite.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: appPadding, right: appPadding),
                  height: size.width * .125,
                  child: Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          popular_lecturer[0]["total_students"],
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                            color: yellow,
                          ),
                        ),
                        Text(
                          popular_lecturer[0]["total_courses"],
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                            color: yellow,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: smallSpacer),
                Padding(
                  padding:
                      const EdgeInsets.only(left: appPadding, right: appPadding),
                  child: CustomTitle(
                    title: "About Me",
                    extend: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(appPadding),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                    maxLines: 5,
                    // overflow: TextOverflow.fade,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: textWhite.withOpacity(0.7),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: fitSpacer),
                Padding(
                  padding:
                      const EdgeInsets.only(left: appPadding, right: appPadding),
                  child: CustomTitle(
                    title: "All Course",
                  ),
                ),
                SizedBox(height: smallSpacer),
                Padding(
                  padding: const EdgeInsets.only(
                    left: appPadding,
                    top: 10,
                    bottom: 20,
                    right: appPadding,
                  ),
                  child: Wrap(
                    spacing: 10,
                    children: List.generate(
                      all_course.length,
                      (index) {
                        return All_Course_Cart(
                            image: all_course[index]["image"],
                            title: all_course[index]["title"],
                            userName: all_course[index]["user_name"],
                            price: all_course[index]["price"]);
                      },
                    ),
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

import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../datas/category_list_json.dart';
import '../datas/courses_json.dart';
import '../root_app.dart';
import '../theme/colors.dart';
import '../theme/padding.dart';
import '../utils/contant.dart';
import '../widgets/all_course_cart.dart';
import '../widgets/custom_course_card.dart';
import '../widgets/custom_person_card.dart';
import '../widgets/custom_title.dart';
import 'detailedcourse_page.dart';
import 'persion_page.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
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
          SizedBox(height: spacer),
          Padding(
            padding: const EdgeInsets.only(
                left: appPadding, right: appPadding, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RootApp(),
                      ),
                    );
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: yellow,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          color: yellow,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: SvgPicture.asset(
                      assetImg + "arrow_left_icon.svg",
                      color: backgroundBlack,
                    ),
                  ),
                ),
                Text(
                  "Design",
                  style: TextStyle(
                    fontSize: 18,
                    color: textWhite.withOpacity(.8),
                  ),
                ),
                Container(
                  child: SvgPicture.asset(
                    assetImg + "filter_icon.svg",
                    height: 18,
                    color: yellow,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: spacer),
          Padding(
            padding: const EdgeInsets.only(left: appPadding, right: appPadding),
            child: CustomTitle(
              title: "Feature Course",
              extend: false,
            ),
          ),
          SizedBox(height: smallSpacer),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailedCouse_page(),
                    maintainState: true,
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  left: appPadding,
                  top: 10,
                  bottom: 30,
                ),
                child: Wrap(
                  spacing: 10,
                  children: List.generate(
                    CoursesJson.length,
                    (index) {
                      return CustomCourseCardExpand(
                        thumbNail: CoursesJson[index]['image'],
                        videoAmount: CoursesJson[index]['video'],
                        title: CoursesJson[index]['title'],
                        userProfile: CoursesJson[index]['user_profile'],
                        userName: CoursesJson[index]['user_name'],
                        price: CoursesJson[index]['price'],
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: spacer),
          Padding(
            padding: const EdgeInsets.only(left: appPadding, right: appPadding),
            child: CustomTitle(
              title: "Popular Topics",
            ),
          ),
          SizedBox(height: smallSpacer),
          Padding(
            padding: const EdgeInsets.all(appPadding),
            child: Wrap(
              runSpacing: 10,
              spacing: 20,
              children: List.generate(
                popular_topic.length,
                (index) {
                  return Container(
                    // alignment: Alignment.center,
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    decoration: BoxDecoration(
                      color: primary.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(100.0),
                      boxShadow: [
                        BoxShadow(
                          color: primary.withOpacity(0.5),
                          spreadRadius: 0.0,
                          blurRadius: 6.0,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    child: Text(
                      popular_topic[index]['title'],
                      style: TextStyle(
                        color: backgroundBlack,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: smallSpacer),
          Padding(
            padding: const EdgeInsets.only(left: appPadding, right: appPadding),
            child: CustomTitle(
              title: "Popular Lecturer",
            ),
          ),
          SizedBox(height: smallSpacer),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(
                left: appPadding,
                top: 10,
                bottom: 20,
                right: appPadding,
              ),
              child: Wrap(
                spacing: 10,
                children: List.generate(
                  popular_lecturer.length,
                  (index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PersionPage()),
                        );
                      },
                      child: CustomPersonCard(
                        image: popular_lecturer[index]['user_profile'],
                        name: popular_lecturer[index]['user_name'],
                        course: popular_lecturer[index]['course'],
                        totalCourses: popular_lecturer[index]['total_courses'],
                        totalStudents: popular_lecturer[index]
                            ['total_students'],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: smallSpacer),
          Padding(
            padding: const EdgeInsets.only(left: appPadding, right: appPadding),
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
          SizedBox(height: smallSpacer),
        ],
      ),
    );
  }
}

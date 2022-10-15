import 'package:flutter/material.dart';

import '../datas/category_list_json.dart';
import '../datas/course_video_json.dart';
import '../theme/colors.dart';
import '../theme/padding.dart';
import '../widgets/all_course_cart.dart';
import '../widgets/custom_ detauledcourse_cart.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_course_footer.dart';
import '../widgets/custom_title.dart';

class DetailedCouse_page extends StatefulWidget {
  const DetailedCouse_page({Key? key}) : super(key: key);

  @override
  State<DetailedCouse_page> createState() => _DetailedCouse_pageState();
}

class _DetailedCouse_pageState extends State<DetailedCouse_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlack,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        brightness: Brightness.dark,
        flexibleSpace: CustomAppBar(
          backgroundColor: Colors.transparent,
        ),
      ),
      body: getBody(),
      bottomNavigationBar: CustomCourseFooter(
        coursePrice: all_course[0]["price"],
      ),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.red,
            width: size.width,
            height: 260,
            child: Image.network(
              all_course[0]["image"],
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(appPadding),
            child: Text(
              all_course[0]["title"],
              maxLines: 2,
              style: TextStyle(
                color: yellow,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: appPadding, right: appPadding),
            child: Container(
              width: size.width,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 5),
                      Container(
                        width: 40,
                        height: 40,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100.0),
                          child: Image.network(
                            popular_lecturer[0]["user_profile"],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        popular_lecturer[0]["user_name"],
                        style: TextStyle(
                          color: textWhite,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star_rate_rounded,
                        color: yellow,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "4.5 - 25.012 Rates",
                        style: TextStyle(
                          color: textWhite,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(appPadding),
            child: Container(
              // color: Colors.amber,
              width: size.width,
              // height: 100,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                // maxLines: 5,
                style: TextStyle(
                  color: textWhite.withOpacity(.8),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(appPadding),
            child: Row(
              children: [
                Container(
                  width: size.width * .5 - appPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Students",
                        maxLines: 2,
                        style: TextStyle(
                          color: textWhite.withOpacity(.8),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "2.651",
                        style: TextStyle(
                          color: yellow,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: miniSpacer),
                      Text(
                        "Last Update",
                        maxLines: 2,
                        style: TextStyle(
                          color: textWhite.withOpacity(.8),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "14,Oct 2022",
                        style: TextStyle(
                          color: yellow,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width * .5 - appPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Language",
                        maxLines: 2,
                        style: TextStyle(
                          color: textWhite.withOpacity(.8),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "English",
                        style: TextStyle(
                          color: yellow,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: miniSpacer),
                      Text(
                        "Subtitles",
                        maxLines: 2,
                        style: TextStyle(
                          color: textWhite.withOpacity(.8),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "English, + 5 more",
                        style: TextStyle(
                          color: yellow,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: smallSpacer),
          Padding(
            padding: const EdgeInsets.only(left: appPadding, right: appPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTitle(
                  title: "Curriculum",
                  extend: false,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "3 Sections - 30 Luctures - 4h 30mn video length",
                  style: TextStyle(
                    color: textWhite.withOpacity(.6),
                  ),
                ),
              ],
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
                CourseVideoJson.length,
                (index) {
                  return custom_detauledcourse(
                    index: index + 1,
                    length: 4,
                    title: CourseVideoJson[index]["title"],
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: appPadding, right: appPadding),
            child: CustomTitle(
              title: "Similar Courses",
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
    );
  }
}

import 'package:flutter/material.dart';

import '../datas/category_json.dart';
import '../datas/courses_json.dart';
import '../datas/user_profile.dart';
import '../theme/colors.dart';
import '../theme/padding.dart';
import '../widgets/clipper.dart';
import '../widgets/custom_categories_button.dart';
import '../widgets/custom_category_card.dart';
import '../widgets/custom_course_card.dart';
import '../widgets/custom_heading.dart';
import '../widgets/custom_promotion_card.dart';
import '../widgets/custom_search_field.dart';
import '../widgets/custom_title.dart';
import 'detailedcourse_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          Stack(
            alignment: Alignment.topCenter,
            children: [
              ClipPath(
                clipper: BottomClipper(),
                child: Container(
                  width: size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    color: yellow,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: appPadding,
                  right: appPadding,
                ),
                child: Column(
                  children: [
                    SizedBox(height: spacer + 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomHeading(
                          title: "Hi Long",
                          subTitle: "Let's Start learning ",
                          color: textBlack,
                        ),
                        Container(
                          height: spacer,
                          width: spacer,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              UserProfile["image"].toString(),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: spacer),
                    CustomSearchField(
                      hintField: "Search",
                      backgroundColor: backgroundBlack,
                    ),
                    SizedBox(height: spacer - 30.0),
                    InkWell(
                      onTap: () {},
                      child: CustomCategoryCard(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: spacer),
          CustomPromotionCard(),
          SizedBox(height: spacer),
          Padding(
            padding: const EdgeInsets.only(left: appPadding, right: appPadding),
            child: CustomTitle(title: "Feature Course"),
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
          SizedBox(height: spacer - 40),
          Padding(
            padding: const EdgeInsets.only(left: appPadding, right: appPadding),
            child: CustomTitle(title: "Categories"),
          ),
          SizedBox(height: smallSpacer),
          Padding(
            padding: const EdgeInsets.only(left: appPadding),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: List.generate(
                      CategoryJson.length,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          child: CustomCategoriesButton(
                              title: CategoryJson[index]["title"]),
                        );
                      },
                    ),
                  ),
                  Row(
                    children: List.generate(
                      CategoryJson.length,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          child: CustomCategoriesButton(
                              title: CategoryJson2[index]["title"]),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: spacer),
          Padding(
            padding: const EdgeInsets.only(left: appPadding, right: appPadding),
            child: CustomTitle(title: "Design Course"),
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
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../datas/courses_json.dart';
import '../theme/colors.dart';
import '../theme/padding.dart';
import '../widgets/custom_heading.dart';
import '../widgets/custom_my_courses_card.dart';
import 'detailedcourse_page.dart';

class MyCoursesPage extends StatefulWidget {
  const MyCoursesPage({Key? key}) : super(key: key);

  @override
  State<MyCoursesPage> createState() => _MyCoursesPageState();
}

class _MyCoursesPageState extends State<MyCoursesPage> {
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
    // TabController password;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(appPadding),
        child: Column(
          children: [
            SizedBox(height: spacer),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomHeading(
                  title: "My Courses",
                  subTitle: "Let's continue Shall we?",
                  color: textWhite,
                ),
                Text(
                  "2 Courses",
                  style: TextStyle(
                    fontSize: 15,
                    color: secondary,
                  ),
                ),
              ],
            ),
            SizedBox(height: spacer),
            Column(
              children: List.generate(
                MyCoursesJson.length,
                (index) {
                  return InkWell(
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
                      padding: const EdgeInsets.only(bottom: 25),
                      child: CustomMyCoursesCard(
                        image: MyCoursesJson[index]['image'],
                        title: MyCoursesJson[index]['title'],
                        instructor: MyCoursesJson[index]['user_name'],
                        videoAmount: MyCoursesJson[index]['video'],
                        percentage: MyCoursesJson[index]['percentage'],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

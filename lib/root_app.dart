import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Pages/account_page.dart';
import 'Pages/explore_page.dart';
import 'Pages/home_page.dart';
import 'Pages/my_courses_Page.dart';
import 'theme/colors.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      HomePage(),
      MyCoursesPage(),
      ExplorePage(),
      AccountPage(),
    ];
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  Widget getFooter() {
    var size = MediaQuery.of(context).size;
    List bottomItems = [
      "assets/images/home_icon.svg",
      "assets/images/play_icon.svg",
      "assets/images/rocket_icon.svg",
      "assets/images/user_icon.svg",
    ];
    return Container(
      width: size.width,
      height: 80,
      decoration: BoxDecoration(
        color: textBlack.withOpacity(0.9),
        boxShadow: [
          BoxShadow(
            color: yellow.withOpacity(0.15),
            blurRadius: 30.0,
            offset: Offset(0, -10),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 40,
            right: 40,
            bottom: 10,
            top: 30,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              bottomItems.length,
              (index) {
                return InkWell(
                  onTap: () {
                    selectedTab(index);
                  },
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        bottomItems[index],
                        height: 17.5,
                        color: pageIndex == index ? yellow : grey,
                      ),
                      SizedBox(height: 15),
                      (pageIndex == index)
                          ? AnimatedContainer(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                              child: Container(
                                height: 5.0,
                                width: 20.0,
                                decoration: BoxDecoration(
                                    color: yellow,
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                            )
                          : Container(
                              height: 5.0,
                              width: 20.0,
                            ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }
}

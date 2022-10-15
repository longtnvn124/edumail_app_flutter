import 'package:flutter/material.dart';

import '../datas/category_json.dart';
import '../theme/colors.dart';
import '../theme/padding.dart';
import '../widgets/custom_heading.dart';
import '../widgets/custom_place_holder.dart';
import '../widgets/custom_search_field.dart';
import '../widgets/custom_title.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(appPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: spacer),
            CustomHeading(
              title: "Explore",
              subTitle: "Seek fir your preference",
              color: primary,
            ),
            SizedBox(height: spacer),
            CustomSearchField(
              hintField: "Tìm kiếm",
              backgroundColor: backgroundBlack,
            ),
            SizedBox(height: spacer),
            CustomTitle(
              title: "Top Searches",
              extend: false,
            ),
            SizedBox(height: smallSpacer),
            Wrap(
              runSpacing: 10,
              spacing: 10,
              children: List.generate(
                CategoryJson.length,
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
                      CategoryJson[index]["title"],
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
            SizedBox(height: spacer),
            CustomTitle(title: "Categories", extend: false),
            SizedBox(height: smallSpacer),
            Column(
              children: List.generate(
                AllCategories.length,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CunstomPlaceHolder(
                        title: AllCategories[index]["title"]),
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

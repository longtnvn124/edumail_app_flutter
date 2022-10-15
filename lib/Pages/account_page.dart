import 'package:flutter/material.dart';

import '../datas/account_menu_json.dart';
import '../theme/colors.dart';
import '../theme/padding.dart';
import '../widgets/custom_button_box.dart';
import '../widgets/custom_heading.dart';
import '../widgets/custom_place_holder.dart';
import '../widgets/custom_title.dart';
import 'login_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
    List items = AccountMenuJson[2]['categories'];
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(appPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: spacer),
            CustomHeading(
              title: "Account",
              subTitle: "Student",
              color: yellow,
            ),
            SizedBox(height: spacer),
            CustomTitle(title: "Support", extend: false),
            SizedBox(height: spacer),
            Column(
              children: List.generate(items.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: CunstomPlaceHolder(title: items[index]["title"]),
                );
              }),
            ),
            SizedBox(height: spacer),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                    maintainState: false,
                  ),
                );
              },
              child: CustomButtonBox(title: "Sign Out"),
            ),
          ],
        ),
      ),
    );
  }
}

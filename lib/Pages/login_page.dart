import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';


import '../root_app.dart';
import '../theme/colors.dart';
import '../theme/padding.dart';
import '../widgets/custom_button_box.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPass = true;
  String username = '';
  String password = '';
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
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(appPadding),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: spacer),
                      Text(
                        "Login Now",
                        style: TextStyle(
                            fontSize: 30,
                            color: yellow,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: miniSpacer),
                      Text(
                        "please enter the details below to continue",
                        style: TextStyle(
                            fontSize: 15, color: textWhite.withOpacity(0.6)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: spacer),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: bgTextField,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.mail_outline,
                        color: textWhite.withOpacity(0.8),
                      ),
                      SizedBox(width: 15),
                      Flexible(
                        child: TextField(
                          style: TextStyle(color: textWhite),
                          cursorColor: textWhite.withOpacity(0.8),
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: textWhite.withOpacity(0.8),
                            ),
                            border: InputBorder.none,
                            isDense: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: fitSpacer),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: bgTextField,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.lock_outline,
                        color: textWhite.withOpacity(0.8),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Flexible(
                        child: TextFormField(
                          style: TextStyle(color: textWhite.withOpacity(0.8)),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          obscuringCharacter: '*',
                          obscureText: showPass,
                          initialValue: password,
                          cursorColor: textWhite.withOpacity(0.8),
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle:
                                TextStyle(color: textWhite.withOpacity(0.8)),
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              icon: Icon(
                                showPass
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                size: 24,
                                color: textWhite.withOpacity(0.8),
                              ),
                              onPressed: () {
                                setState(() {
                                  showPass = !showPass;
                                  print(showPass);
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: fitSpacer),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: textWhite.withOpacity(0.8),
                    ),
                  ),
                ),
                child: Text(
                  "Sign in with your phone number",
                  style: TextStyle(color: textWhite),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Forgot password",
                style: TextStyle(
                    color: yellow, fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: smallSpacer),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RootApp(),
                      maintainState: false,
                    ),
                  );
                },
                child: CustomButtonBox(
                  title: 'LOGIN',
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Do not have an account?",
                    style: TextStyle(
                        fontSize: 14, color: textWhite.withOpacity(.8)),
                  ),
                  SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterPage(),
                          maintainState: false,
                        ),
                      );
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 14,
                        color: yellow,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Flexible(
                    child: Divider(thickness: .8, color: textWhite),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Or",
                    style: TextStyle(color: textWhite.withOpacity(.8)),
                  ),
                  SizedBox(width: 5),
                  Flexible(
                    child: Divider(thickness: .8, color: textWhite),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 1,
                        color: yellow.withOpacity(.8),
                      ),
                    ),
                    child: Center(
                      child: SvgPicture.asset("assets/images/google_logo.svg"),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 1,
                        color: yellow.withOpacity(.8),
                      ),
                    ),
                    child: Center(
                      child:
                          SvgPicture.asset("assets/images/facebook_logo.svg"),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

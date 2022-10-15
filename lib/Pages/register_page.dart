import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/padding.dart';
import '../widgets/custom_button_box.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(appPadding),
          child: Column(
            children: [
              SizedBox(height: spacer),
              Row(
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 30,
                        color: yellow,
                        fontWeight: FontWeight.bold),
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
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.mail_outline,
                        color: textWhite.withOpacity(0.6),
                      ),
                      SizedBox(width: 15),
                      Flexible(
                        child: TextFormField(
                          style: TextStyle(color: textWhite),
                          cursorColor: textWhite.withOpacity(0.6),
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle:
                                TextStyle(color: textWhite.withOpacity(0.6)),
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
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_outline_outlined,
                        color: textWhite.withOpacity(0.6),
                      ),
                      SizedBox(width: 15),
                      Flexible(
                        child: TextFormField(
                          style: TextStyle(color: textWhite),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          cursorColor: textWhite.withOpacity(0.6),
                          decoration: InputDecoration(
                            hintText: "Username",
                            hintStyle:
                                TextStyle(color: textWhite.withOpacity(0.6)),
                            border: InputBorder.none,
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
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.lock_outline_rounded,
                        color: textWhite.withOpacity(0.6),
                      ),
                      SizedBox(width: 15),
                      Flexible(
                        child: TextFormField(
                          style: TextStyle(color: textWhite),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          obscuringCharacter: '*',
                          obscureText: showPass,
                          initialValue: password,
                          cursorColor: textWhite.withOpacity(0.6),
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle:
                                TextStyle(color: textWhite.withOpacity(0.6)),
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              icon: Icon(
                                showPass
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                size: 24,
                                color: textWhite.withOpacity(0.6),
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
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Creating an account means you\’re okay with our ",
                  style: TextStyle(color: textWhite, fontSize: 13),
                  children: [
                    TextSpan(
                      text: "Terms of Service, Privacy Policy, ",
                      style: TextStyle(color: yellow),
                    ),
                    TextSpan(
                      text: "and our default ",
                      style: TextStyle(color: textWhite),
                    ),
                    TextSpan(
                      text: "Notification Settings.",
                      style: TextStyle(color: yellow),
                    ),
                  ],
                ),
              ),
              SizedBox(height: miniSpacer),
              Container(
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: textWhite,
                  ),
                )),
                child: Text(
                  "Sign up by phone number",
                  style: TextStyle(color: textWhite),
                ),
              ),
              SizedBox(height: spacer - 10),
              CustomButtonBox(
                title: 'Sign Up',
              ),
              SizedBox(height: fitSpacer),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "you already have 1 account?",
                      style: TextStyle(color: textWhite.withOpacity(.5)),
                    ),
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
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 1, color: yellow),
                          ),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(color: yellow),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

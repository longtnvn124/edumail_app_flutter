 import 'package:flutter/material.dart';

import 'Pages/detailedcourse_page.dart';
import 'Pages/login_page.dart';
import 'root_app.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: "Roboto Regular"),
      debugShowCheckedModeBanner: false,

      // color: backgroundBlack,
      home: LoginPage(),
    ),
  );
}

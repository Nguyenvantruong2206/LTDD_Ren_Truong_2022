import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/login/login.dart';
import 'package:flutter_application_1/navigatorbar.dart';
import 'package:flutter_application_1/profiles/profiles.dart';
import 'package:flutter_application_1/resetpassword.dart';

import 'package:flutter_application_1/sign%20up/signup.dart';
import 'package:flutter_application_1/trangchu/home.dart';
import 'package:flutter_application_1/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: navigatorbar(),
    );
  }
}

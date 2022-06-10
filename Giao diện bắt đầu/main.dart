import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Welcome/welcome_LTDD.dart';
import 'package:flutter_application_1/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'INFORMATION TECHNOLOGY',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: welcome(),
    );
  }
}

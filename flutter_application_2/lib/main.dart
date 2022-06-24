import 'package:flutter/material.dart';
import 'package:flutter_application_2/CTCTHSSV/ctcthssv.dart';
import 'package:flutter_application_2/DoanTN/doantn.dart';
import 'package:flutter_application_2/HocBong/hocbong.dart';
import 'package:flutter_application_2/KhoaCNTT/khoacntt.dart';
import 'package:flutter_application_2/login/welcome.dart';
import 'package:flutter_application_2/pages/home.dart';
import 'package:flutter_application_2/pages/homepage.dart';
import 'package:flutter_application_2/phongdaotao/phongdaotao.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

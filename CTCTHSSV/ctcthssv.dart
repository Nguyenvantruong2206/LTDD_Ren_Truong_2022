import 'package:flutter/material.dart';
import 'package:flutter_application_2/CTCTHSSV/categoryselector.dart';
import 'package:flutter_application_2/CTCTHSSV/tilednewview.dart';
import 'package:flutter_application_2/KhoaCNTT/newcarousel.dart';

import 'package:flutter_application_2/pages/homepage.dart';

class ctcthssv extends StatelessWidget {
  const ctcthssv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Phòng CTCT - HSSV"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => homepage()),
              );
            },
            icon: Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),
                SizedBox(height: 5),
                NewsCarousel2(),
                SizedBox(
                  height: 15,
                ),
                CategorySelector3(),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [TiledNewsView3()],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_2/HocBong/categoryselector.dart';
import 'package:flutter_application_2/HocBong/newcarousel.dart';
import 'package:flutter_application_2/HocBong/tilednewview.dart';
import 'package:flutter_application_2/pages/homepage.dart';

class hocbonng extends StatelessWidget {
  const hocbonng({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Học Bổng"),
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
                NewsCarousel5(),
                SizedBox(
                  height: 15,
                ),
                CategorySelector5(),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [TiledNewsView5()],
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

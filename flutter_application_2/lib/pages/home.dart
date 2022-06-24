import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/categorySelector.dart';
import 'package:flutter_application_2/components/newsCarousel.dart';
import 'package:flutter_application_2/components/tiledNewsView.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
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
                NewsCarousel(),
                SizedBox(
                  height: 15,
                ),
                CategorySelector(),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [TiledNewsView()],
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

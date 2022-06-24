import 'package:flutter/material.dart';

import 'package:flutter_application_2/HocBong/news.dart';
import 'package:flutter_application_2/HocBong/newview.dart';
import 'package:flutter_application_2/HocBong/values.dart';

class TiledNewsView5 extends StatelessWidget {
  TiledNewsView5({Key? key}) : super(key: key);
  final List<News5> news5 = StaticValues().news5;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(news5.length, (index) {
        News5 newsItem5 = news5[index];
        int newsDescriptionLength5 = newsItem5.descrption5.split(' ').length;
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NewsViewPage5(newsPost5: newsItem5)));
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  child: Image.network(
                    newsItem5.image5,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          child: Text(
                        getTruncatedTitle(newsItem5.title5, 60),
                      )),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            newsItem5.time5,
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey[700]),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  String getTruncatedTitle(String actualString, int maxLetters) {
    return actualString.length > maxLetters
        ? actualString.substring(0, maxLetters) + "..."
        : actualString;
  }
}

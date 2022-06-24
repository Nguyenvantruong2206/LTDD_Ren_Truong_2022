import 'package:flutter/material.dart';
import 'package:flutter_application_2/KhoaCNTT/news.dart';
import 'package:flutter_application_2/KhoaCNTT/newview.dart';
import 'package:flutter_application_2/KhoaCNTT/values.dart';

class TiledNewsView2 extends StatelessWidget {
  TiledNewsView2({Key? key}) : super(key: key);
  final List<News2> news2 = StaticValues().news2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(news2.length, (index) {
        News2 newsItem2 = news2[index];
        int newsDescriptionLength2 = newsItem2.descrption2.split(' ').length;
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NewsViewPage2(newsPost2: newsItem2)));
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
                    newsItem2.image2,
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
                        getTruncatedTitle(newsItem2.title2, 60),
                      )),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            newsItem2.time2,
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

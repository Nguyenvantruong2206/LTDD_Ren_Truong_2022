import 'package:flutter/material.dart';
import 'package:flutter_application_2/phongdaotao/news.dart';
import 'package:flutter_application_2/phongdaotao/newview.dart';
import 'package:flutter_application_2/phongdaotao/values.dart';

class TiledNewsView1 extends StatelessWidget {
  TiledNewsView1({Key? key}) : super(key: key);
  final List<News1> news1 = StaticValues().news1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(news1.length, (index) {
        News1 newsItem1 = news1[index];
        int newsDescriptionLength1 = newsItem1.descrption1.split(' ').length;
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NewsViewPage1(newsPost1: newsItem1)));
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
                    newsItem1.image1,
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
                        getTruncatedTitle(newsItem1.title1, 60),
                      )),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            newsItem1.time1,
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

import 'package:flutter/material.dart';
import 'package:flutter_application_2/CTCTHSSV/news.dart';
import 'package:flutter_application_2/CTCTHSSV/newview.dart';
import 'package:flutter_application_2/CTCTHSSV/values.dart';

class TiledNewsView3 extends StatelessWidget {
  TiledNewsView3({Key? key}) : super(key: key);
  final List<News3> news3 = StaticValues().news3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(news3.length, (index) {
        News3 newsItem3 = news3[index];
        int newsDescriptionLength3 = newsItem3.descrption3.split(' ').length;
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NewsViewPage3(newsPost3: newsItem3)));
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
                    newsItem3.image3,
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
                        getTruncatedTitle(newsItem3.title3, 60),
                      )),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            newsItem3.time3,
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

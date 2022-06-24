import 'package:flutter/material.dart';
import 'package:flutter_application_2/KhoaCNTT/news.dart';

class NewsViewPage2 extends StatefulWidget {
  final News2 newsPost2;
  NewsViewPage2({Key? key, required this.newsPost2}) : super(key: key);
  @override
  _NewsViewPage2State createState() => _NewsViewPage2State();
}

class _NewsViewPage2State extends State<NewsViewPage2> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          width: size.width,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              ClipRRect(
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(widget.newsPost2.image2),
                  height: size.height,
                  width: size.width,
                ),
              ),
              Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      // const Color(0xCC000000),
                      const Color(0x00000000),
                      const Color(0x00000000),
                      const Color(0xCC000000),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(top: 30, left: 10),
                    child: Icon(
                      Icons.arrow_back,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                // alignment: Alignment.bottomCenter,
                child: Container(
                  width: size.width,
                  margin: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        widget.newsPost2.title2,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image:
                                    NetworkImage(widget.newsPost2.sourceImage2),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.newsPost2.source2,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    widget.newsPost2.time2,
                                    style: TextStyle(color: Colors.grey[400]),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 40),
                            child: Row(
                              children: [
                                Container(
                                  child: IconButton(
                                    icon: Icon(_isFavorited
                                        ? Icons.favorite
                                        : Icons.favorite_border),
                                    color: Colors.red,
                                    onPressed: () {
                                      setState(() {
                                        _isFavorited = !_isFavorited;
                                      });
                                    },
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 40),
                        height: 3,
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 40),
                        child: Text(widget.newsPost2.descrption2,
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}

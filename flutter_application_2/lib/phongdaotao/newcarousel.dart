import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/phongdaotao/values.dart';

class NewsCarousel1 extends StatelessWidget {
  NewsCarousel1({Key? key}) : super(key: key);
  final StaticValues staticValues = StaticValues();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 250.0,
      ),
      items: staticValues.news1.map((news1) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(news1.image1),
                      height: 250,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color(0xCC000000),
                            const Color(0x00000000),
                            const Color(0x00000000),
                            const Color(0xCC000000),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        news1.title1,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _current = 0;
  final List<String> images = [
    'assets/images/1.png',
    'assets/images/2.png',
  ];
  final List<String> places = ['KHOA CNTT', 'HỌC BỔNG'];
  List<Widget> generateImagesTiles() {
    return images
        .map(
          (Element) => ClipRRect(
            child: Image.asset(
              Element,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 50),
      child: Stack(
        children: [
          CarouselSlider(
            items: generateImagesTiles(),
            options: CarouselOptions(
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 18 / 8,
                onPageChanged: (index, other) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          AspectRatio(
            aspectRatio: 18 / 8,
            child: Center(
                child: Text(
              places[_current],
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width / 15),
            )),
          ),
        ],
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controller1 = TextEditingController();
  String _bv1 = "Thi Olympic Tin Học Cao Thắng";
  String _bv2 = "Thông báo mở học kỳ phụ";
  String _bv3 = "Giải bóng đá cho sinh viên cao thắng";
  int _current = 0;
  final List<String> images = [
    'assets/images/6.jpg',
    'assets/images/7.jpg',
    'assets/images/8.jpg',
  ];
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(1),
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(top: 2),
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
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Bảng tin khoa CNTT",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 50, right: 50),
                height: 500,
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            )),
                          ),
                          child: Text(_bv1),
                        ),
                        subtitle: Container(
                            padding: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              )),
                            ),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text('Nội dung tìm kiếm',
                                      style: TextStyle(color: Colors.grey)),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('Xem chi tiết',
                                      style: TextStyle(color: Colors.blue)),
                                )
                              ],
                            )),
                        leading: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/images/6.jpg'),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            )),
                          ),
                          child: Text(_bv2),
                        ),
                        subtitle: Container(
                            padding: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              )),
                            ),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text('Nội dung tìm kiếm',
                                      style: TextStyle(color: Colors.grey)),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('Xem chi tiết',
                                      style: TextStyle(color: Colors.blue)),
                                )
                              ],
                            )),
                        leading: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/images/6.jpg'),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            )),
                          ),
                          child: Text(_bv3),
                        ),
                        subtitle: Container(
                            padding: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              )),
                            ),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text('Nội dung tìm kiếm',
                                      style: TextStyle(color: Colors.grey)),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('Xem chi tiết',
                                      style: TextStyle(color: Colors.blue)),
                                )
                              ],
                            )),
                        leading: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/images/6.jpg'),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            )),
                          ),
                          child: Text(_bv3),
                        ),
                        subtitle: Container(
                            padding: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              )),
                            ),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text('Nội dung tìm kiếm',
                                      style: TextStyle(color: Colors.grey)),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('Xem chi tiết',
                                      style: TextStyle(color: Colors.blue)),
                                )
                              ],
                            )),
                        leading: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/images/6.jpg'),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            )),
                          ),
                          child: Text(_bv3),
                        ),
                        subtitle: Container(
                            padding: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              )),
                            ),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text('Nội dung tìm kiếm',
                                      style: TextStyle(color: Colors.grey)),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('Xem chi tiết',
                                      style: TextStyle(color: Colors.blue)),
                                )
                              ],
                            )),
                        leading: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/images/6.jpg'),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            )),
                          ),
                          child: Text(_bv3),
                        ),
                        subtitle: Container(
                            padding: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              )),
                            ),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text('Nội dung tìm kiếm',
                                      style: TextStyle(color: Colors.grey)),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('Xem chi tiết',
                                      style: TextStyle(color: Colors.blue)),
                                )
                              ],
                            )),
                        leading: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/images/6.jpg'),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Text(
                      "Tin nổi bậc",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            )),
                          ),
                          child: Text(_bv3),
                        ),
                        subtitle: Container(
                            padding: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              )),
                            ),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text('Nội dung tìm kiếm',
                                      style: TextStyle(color: Colors.grey)),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('Xem chi tiết',
                                      style: TextStyle(color: Colors.blue)),
                                )
                              ],
                            )),
                        leading: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/images/6.jpg'),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            )),
                          ),
                          child: Text(_bv3),
                        ),
                        subtitle: Container(
                            padding: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              )),
                            ),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text('Nội dung tìm kiếm',
                                      style: TextStyle(color: Colors.grey)),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('Xem chi tiết',
                                      style: TextStyle(color: Colors.blue)),
                                )
                              ],
                            )),
                        leading: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/images/6.jpg'),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            )),
                          ),
                          child: Text(_bv3),
                        ),
                        subtitle: Container(
                          padding: EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            )),
                          ),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text('Nội dung tìm kiếm',
                                    style: TextStyle(color: Colors.grey)),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text('Xem chi tiết',
                                    style: TextStyle(color: Colors.blue)),
                              )
                            ],
                          ),
                        ),
                        leading: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/images/6.jpg'),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

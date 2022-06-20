import 'package:flutter/material.dart';

class Thong_bao_page extends StatelessWidget {
  @override
  List<String> Tieu_de = [
    "Phòng đào tạo đã đăng một bài viết mới",
    "Phòng CTCTHSSV đã đăng một bài viết mới",
    "Đoàn thanh niên đã đăng một bài viết mới",
    "Phòng đào tạo đã đăng một bài viết mới",
    "Phòng CTCTHSSV đã đăng một bài viết mới",
    "Phòng đào tạo đã đăng một bài viết mới",
    "Phòng CTCTHSSV đã đăng một bài viết mới",
    "Phòng đào tạo đã đăng một bài viết mới",
    "Phòng CTCTHSSV đã đăng một bài viết mới",
  ];
  List<String> Thoi_gian = [
    "8 giờ trước",
    "11 giờ trước",
    "12 giờ trước",
    "13 giờ trước",
    "20 giờ trước",
    "13 giờ trước",
    "20 giờ trước",
    "13 giờ trước",
    "20 giờ trước",
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: ListView.builder(
              itemCount: Tieu_de.length,
              itemBuilder: (BuildContext, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/1.png"),
                    ),
                    title: Text(Tieu_de[index]),
                    subtitle: Text(Thoi_gian[index]),
                  ),
                );
              },
              shrinkWrap: true,
              padding: EdgeInsets.all(5),
              scrollDirection: Axis.vertical,
            ),
          )
        ],
      ),
    );
  }
}

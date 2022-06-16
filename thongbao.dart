import 'package:flutter/material.dart';
import 'package:demo/profile.dart';

class Thong_bao extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title of Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Thong_bao_page(),
    );
  }
}

class Thong_bao_page extends StatelessWidget {
  @override
  List<String> Tieu_de = [
    "Phòng đào tạo đã đăng một bài viết mới",
    "Phòng CTCTHSSV đã đăng một bài viết mới",
    "Đoàn thanh niên đã đăng một bài viết mới",
    "Phòng đào tạo đã đăng một bài viết mới",
    "Phòng CTCTHSSV đã đăng một bài viết mới"

  ];
  List<String> Thoi_gian = [
    "8 giờ trước",
    "11 giờ trước",
    "12 giờ trước",
    "13 giờ trước",
    "20 giờ trước"

  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Thông báo"),
      ),
      body:Stack(
        children:[Container(child: ListView.builder(
          itemCount: Tieu_de.length,
        itemBuilder: (BuildContext, index){
          return Card(
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("image/logo.png")),
              title:Text(Tieu_de[index]),
              subtitle: Text(Thoi_gian[index]),
            ),
          );
        },
        shrinkWrap: true,
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
      ),)
      ],),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
            ),
          ),
        child: SafeArea(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.home)),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notification_add),
            ),
            IconButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Profile()))),
                icon: Icon(Icons.account_box)),
          ],
        )),
      ),
    );
  }
}

import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/CTCTHSSV/ctcthssv.dart';
import 'package:flutter_application_2/DoanTN/doantn.dart';
import 'package:flutter_application_2/HocBong/hocbong.dart';
import 'package:flutter_application_2/KhoaCNTT/khoacntt.dart';
import 'package:flutter_application_2/login/login.dart';
import 'package:flutter_application_2/notification/thongbao.dart';
import 'package:flutter_application_2/pages/home.dart';
import 'package:flutter_application_2/phongdaotao/phongdaotao.dart';
import 'package:flutter_application_2/profiles/profiles.dart';

class homepage extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

bool _iconbool = false;
IconData _iconlight = Icons.wb_sunny;
IconData _icondart = Icons.nights_stay;
ThemeData _lighttheme =
    ThemeData(primarySwatch: Colors.blue, brightness: Brightness.light);
ThemeData _darttheme = ThemeData(
  primarySwatch: Colors.red,
  brightness: Brightness.dark,
);

class _homeState extends State<homepage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _iconbool ? _darttheme : _lighttheme,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _iconbool = !_iconbool;
                });
              },
              icon: Icon(_iconbool ? _icondart : _iconlight),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Nguyễn Văn Trường"),
                accountEmail: Text("0306191289@caothang.edu.vn"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "T",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("Trang Chủ"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("Phòng CTCTHSSV"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ctcthssv()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("Phòng Đào Tạo"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => phongdaotao()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("Đoàn Thanh Niên"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DoanTN()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("Khoa CNTT"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => khoacntt()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("Học Bổng - Vay Vốn - Học Phí"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => hocbonng()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.replay),
                title: Text("Đăng xuất"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),
            ],
          ),
        ),
        body: <Widget>[
          HomePage2(),
          Thong_bao_page(),
          Profile(),
          Login()
        ][currentIndex],
        bottomNavigationBar: BubbleBottomBar(
          opacity: .2,
          currentIndex: currentIndex,
          onTap: changePage,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          elevation: 8, //optional, uses theme color if not specified
          items: <BubbleBottomBarItem>[
            BubbleBottomBarItem(
                backgroundColor: Colors.red,
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                title: Text("Trang chủ")),
            BubbleBottomBarItem(
                backgroundColor: Colors.deepPurple,
                icon: Icon(
                  Icons.notification_add,
                  color: Colors.black,
                ),
                activeIcon: Icon(
                  Icons.notification_add,
                  color: Colors.deepPurple,
                ),
                title: Text("Thông báo")),
            BubbleBottomBarItem(
                backgroundColor: Colors.indigo,
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.black,
                ),
                activeIcon: Icon(
                  Icons.account_circle,
                  color: Colors.indigo,
                ),
                title: Text("Trang cá nhân")),
          ],
        ),
      ),
    );
  }

  void changePage(int? index) {
    setState(() {
      currentIndex = index!;
    });
  }
}

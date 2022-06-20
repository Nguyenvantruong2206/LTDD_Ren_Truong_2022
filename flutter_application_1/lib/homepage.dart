import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/profiles.dart';
import 'package:flutter_application_1/thongbao.dart';

class homepage extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<homepage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Admin"),
                accountEmail: Text("admin@caothang.edu.vn"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("Phòng CTCTHSSV"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("Phòng Đào Tạo"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("Đoàn Thanh Niên"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("Khoa CNTT"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("Học Bổng"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.replay),
                title: Text("Đăng xuất"),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: <Widget>[
          home(),
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
            BubbleBottomBarItem(
                backgroundColor: Colors.green,
                icon: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                activeIcon: Icon(
                  Icons.settings,
                  color: Colors.green,
                ),
                title: Text("Cài đặt"))
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

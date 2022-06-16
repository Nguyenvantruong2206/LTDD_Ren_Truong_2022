import 'package:flutter/material.dart';
import 'package:flutter_application_1/login/login.dart';
import 'package:flutter_application_1/th%C3%B4ng%20b%C3%A1o/thongbao.dart';
import 'package:flutter_application_1/trang%20c%C3%A1%20nh%C3%A2n/profiles.dart';
import 'package:flutter_application_1/trangchu/trangchu.dart';

class navigatorbar extends StatefulWidget {
  @override
  _navigatorbarState createState() => _navigatorbarState();
}

class _navigatorbarState extends State<navigatorbar> {
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: IndexedStack(
        children: [trangchu(), thongbao(), profiles()],
        index: _selectIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chủ"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_add), label: "Thông báo"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Trang cá nhân"),
        ],
        backgroundColor: Colors.blueAccent,
        selectedItemColor: Colors.amber,
        currentIndex: _selectIndex,
        onTap: (index) {
          setState(() {
            _selectIndex = index;
          });
        },
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Login();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

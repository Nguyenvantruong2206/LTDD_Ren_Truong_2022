import 'package:flutter/material.dart';
import 'package:flutter_application_1/login/login.dart';
import 'package:flutter_application_1/th%C3%B4ng%20b%C3%A1o/thongbao.dart';
import 'package:flutter_application_1/trang%20c%C3%A1%20nh%C3%A2n/profile.dart';

class homepage extends StatelessWidget {
  int currentTab = 0;
  final List<Widget> screens = [thongbao(), profile()];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentsceens = homepage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentsceens,
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

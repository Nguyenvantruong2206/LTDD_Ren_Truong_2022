import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Welcome/welcome_LTDD.dart';
import 'package:flutter_application_1/Screens/profiles/proflies.dart';
import 'package:flutter_application_1/Screens/profiles/thongbao.dart';
import 'package:flutter_application_1/components/rounded_date.dart';

class Trangchu extends StatefulWidget {
  const Trangchu({Key? key}) : super(key: key);
  @override
  _TrangchuState createState() => _TrangchuState();
}

class _TrangchuState extends State<Trangchu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trang chủ'),
        centerTitle: true,
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
              leading: Icon(Icons.home),
              title: Text("Phòng CTCTHSSV"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.room),
              title: Text("Phòng CTCTHSSV"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text("Khoa"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Thông tin cá nhân"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Profile())));
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
                      return welcome();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, -15),
                  blurRadius: 20,
                  color: Color.fromARGB(255, 212, 184, 240))
            ]),
        child: SafeArea(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Trangchu())));
                },
                icon: Icon(Icons.home)),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Thong_bao())));
              },
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

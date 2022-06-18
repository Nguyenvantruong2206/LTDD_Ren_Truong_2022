import 'package:flutter/material.dart';
import 'package:flutter_application_1/login/login.dart';
import 'package:flutter_application_1/profiles/profiles.dart';
import 'package:flutter_application_1/profilespage/profilespage.dart';
import 'package:flutter_application_1/thongbao/thongbao.dart';
import 'package:flutter_application_1/trangchu/home.dart';

class navigatorbar extends StatefulWidget {
  @override
  _navigatorbarState createState() => _navigatorbarState();
}

bool _iconbool = false;
IconData _iconlight = Icons.wb_sunny;
IconData _icondart = Icons.nights_stay;
ThemeData _lighttheme =
    ThemeData(primarySwatch: Colors.amber, brightness: Brightness.light);
ThemeData _darttheme = ThemeData(
  primarySwatch: Colors.red,
  brightness: Brightness.dark,
);

class _navigatorbarState extends State<navigatorbar> {
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: _iconbool ? _darttheme : _lighttheme,
        home: Scaffold(
          appBar: AppBar(
            title: Text(""),
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _iconbool = !_iconbool;
                  });
                },
                icon: Icon(_iconbool ? _icondart : _iconlight),
              ),
              IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    showSearch(context: context, delegate: CustomSearch());
                  }),
            ],
          ),
          body: IndexedStack(
            children: [homepage(), Thong_bao_page(), Profile(), ProfilePage()],
            index: _selectIndex,
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Trang chủ",
                backgroundColor: Colors.blueAccent,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notification_add),
                label: "Thông báo",
                backgroundColor: Colors.blueAccent,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: "Trang cá nhân",
                backgroundColor: Colors.blueAccent,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Cài Đặt",
                backgroundColor: Colors.blueAccent,
              ),
            ],
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
        ));
  }
}

class CustomSearch extends SearchDelegate {
  List<String> allData = [
    'Phòng đào tạo',
    'Đoàn thanh niên',
    'Phòng hành chính-quản trị',
    'Phòng CTCT-HSSV',
    'Khoa CNTT',
    'Học Bổng'
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}

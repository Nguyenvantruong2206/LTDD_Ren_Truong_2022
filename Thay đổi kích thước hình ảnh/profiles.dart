import 'package:flutter/material.dart';
import 'package:flutter_application_1/profilespage/profilespage.dart';

import 'package:flutter_application_1/thongbao/thongbao.dart';
import 'package:flutter_application_1/trangchu/home.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 450,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Nguyễn Văn A",
                        style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 1.5,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Colors.black,
                            ),
                            border: InputBorder.none,
                            enabled: false,
                            hintText: "abc@caothang.edu.vn"),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.calendar_month_sharp,
                              color: Colors.black,
                            ),
                            border: InputBorder.none,
                            enabled: false,
                            hintText: "01/11/2001"),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Colors.black,
                            ),
                            border: InputBorder.none,
                            enabled: false,
                            hintText: "0336558449"),
                      ),
                    ]),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Trang cá nhân",
                  style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 1.5,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/1.png'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

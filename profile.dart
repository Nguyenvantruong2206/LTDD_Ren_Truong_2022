
import 'package:flutter/material.dart';
import 'package:demo/profilepage.dart';
import 'package:demo/thongbao.dart';
import 'package:demo/resetpassworrd.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 253, 253, 253),
          ),
          onPressed: () {},
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('image/image.jpg'),
                  ),
                ),
              ),
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
                          fontSize: 35,
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
                      ),Container(
                          child: FlatButton(
                            child: Row(
                              children: [
                                Icon(Icons.settings),
                                SizedBox(width: 5),
                                Text("Thay đổi thông tin cá nhân")
                              ],
                            ),
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => ProfilePage()))),
                            color: Colors.white,
                            textColor: Colors.black,
                          )),

                      Container(
                          child: FlatButton(
                            child: Row(
                              children: [
                                Icon(Icons.restart_alt),
                                SizedBox(width: 5),
                                Text("Thay đổi mật khẩu")
                              ],
                            ),
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => Resetpassword()))),
                            color: Colors.white,
                            textColor: Colors.black,
                          )),
                    ]),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(

            ),
            boxShadow: [

            ]),
        child: SafeArea(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.home)),
            IconButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Thong_bao()))),
              icon: Icon(Icons.notification_add),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.account_box)),
          ],
        )),
      ),
    );
  }
}

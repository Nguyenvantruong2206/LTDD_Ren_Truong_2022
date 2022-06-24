import 'package:flutter/material.dart';
import 'package:demo/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future signin() async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: _user.text, password: _pass.text);
  }

  bool _showpassword = false;
  TextEditingController _user = new TextEditingController();
  TextEditingController _pass = new TextEditingController();
  var _usererror = "Email không hợp lệ! Vui lòng nhập đúng email Cao Thắng";
  var _passerror = "Mật khẩu phải trên 5 ký tự";
  var _userinvalid = false;
  var _passinvaild = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Container(
                width: 70,
                height: 70,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffd8d8d8)),
                // child: Image.asset("assets/images/1.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
              child: Text(
                "Hello\nWelcome To\nInformation Technology CKC",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                controller: _user,
                decoration: InputDecoration(
                  labelText: "EMAIL",
                  errorText: _userinvalid
                      ? _usererror
                      : null, //nghĩa là ko thông báo lỗi
                  labelStyle: TextStyle(
                    color: Color(0xff888888),
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Stack(
                alignment: AlignmentDirectional
                    .centerEnd, // cho chữ show nằm cùng hàng vs password
                children: <Widget>[
                  TextField(
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    controller: _pass,
                    obscureText:
                        !_showpassword, // mật khẩu sẽ hiện dấu chấm tròn
                    decoration: InputDecoration(
                      labelText: "Password",
                      errorText: _passinvaild ? _passerror : null,
                      labelStyle: TextStyle(
                        color: Color(0xff888888),
                        fontSize: 17,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: showpass,
                    child: Text(
                      _showpassword
                          ? "HIDE"
                          : "SHOW", // nếu đang showpass sẽ hiện text là hide còn ko thì là show
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: RaisedButton(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(29),
                    ),
                  ),
                  onPressed: _signin,
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
            Container(
              height: 30,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => RegisterPage()),
                      );
                    },
                    child: Text(
                      "NEW USER? SIGN UP",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff888888),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "FORGOT PASSWORD",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showpass() {
    setState(() {
      _showpassword = !_showpassword;
    });
  }

  void _signin() async {
    _auth
        .signInWithEmailAndPassword(email: _user.text, password: _pass.text)
        .then((user) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RegisterPage()),
      );
    }).onError((error, stackTrace) {
      print("error ${error.toString()}");
    });
  }

  void onsignclicked() async {
    setState(
      () {
        if (_user.text.length < 5 || !_user.text.contains("@caothang.edu.vn"))
        //user nhập nhỏ hơn 6 ký tự hoặc ko có chứa ký tự @caothang.edu.vn thì show message lỗi
        {
          _userinvalid = true;
        } else {
          _userinvalid = false;
        }
        if (_pass.text.length < 5) {
          _passinvaild = true;
        } else {
          _passinvaild = false;
        }
        if (!_userinvalid && !_showpassword) {
          FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: _user.text, password: _pass.text)
              .then((value) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterPage()),
            );
          }).onError((error, stackTrace) {
            print("Error");
          });
        }
      },
    );
  }
}

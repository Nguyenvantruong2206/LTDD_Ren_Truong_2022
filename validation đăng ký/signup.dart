import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/home.dart';
import 'package:flutter_application_1/login/login.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _namecontroller = new TextEditingController();
  TextEditingController _phonecontroller = new TextEditingController();
  TextEditingController _emailcontroller = new TextEditingController();
  TextEditingController _passcontroller = new TextEditingController();
  var _nameerro = "Tên phải lớn hơn 2 ký tự";
  var _phoneerro = "Số điện thoại không hợp lệ";
  var _emailerro = "Email không hợp lệ! Vui lòng nhập email Cao Thắng";
  var _passerro = "Mật khẩu phải lớn hơn 5 ký tự";
  var _nameinvalid = false;
  var _phoneinvalid = false;
  var _emailinvalid = false;
  var _passinvalid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Color(0xff327708),
        ),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Image(image: AssetImage('images/1.png')),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 6),
                child: Text(
                  "Welcome Information Technology!",
                  style: TextStyle(fontSize: 22, color: Color(0xff333333)),
                ),
              ),
              Text(
                "Register an account with simple steps",
                style: TextStyle(fontSize: 16, color: Color(0xff606470)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 80, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  controller: _namecontroller,
                  decoration: InputDecoration(
                    labelText: "Name",
                    errorText: _nameinvalid ? _nameerro : null,
                    prefixIcon: Container(
                      width: 1,
                      child: Image(
                        image: AssetImage('images/2.png'),
                        width: 1,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffCED0D2), width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                  ),
                ),
              ),
              TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                controller: _phonecontroller,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  errorText: _phoneinvalid ? _phoneerro : null,
                  prefixIcon: Container(
                    width: 20,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffCED0D2), width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  controller: _emailcontroller,
                  decoration: InputDecoration(
                    labelText: "Email",
                    errorText: _emailinvalid ? _emailerro : null,
                    prefixIcon: Container(
                      width: 50,
                      child: Image(
                        image: AssetImage('images/1.png'),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffCED0D2), width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                  ),
                ),
              ),
              TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                controller: _passcontroller,
                decoration: InputDecoration(
                  labelText: "Password",
                  errorText: _passinvalid ? _passerro : null,
                  prefixIcon: Container(
                    width: 50,
                    child: Image(
                      image: AssetImage('images/1.png'),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffCED0D2), width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: RaisedButton(
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    onPressed: _onsignclicked,
                    color: Color(0xff3277D8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: RichText(
                  text: TextSpan(
                    text: "Already a User?",
                    style: TextStyle(color: Color(0xff606470), fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Login Now",
                        style:
                            TextStyle(color: Color(0xff3277D8), fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onsignclicked() {
    setState(
      () {
        if (_namecontroller.text.length < 1) {
          _nameinvalid = true;
        } else {
          _nameinvalid = true;
        }
        if (_phonecontroller.text.length < 10) {
          _phoneinvalid = true;
        } else {
          _phoneinvalid = false;
        }
        if (_emailcontroller.text.length < 5 ||
            !_emailcontroller.text.contains("@caothang.edu.vn")) {
          _emailinvalid = true;
        } else {
          _emailinvalid = false;
        }
        if (_passcontroller.text.length < 5) {
          _passinvalid = true;
        } else {
          _phoneinvalid = false;
        }
        if (!_nameinvalid &&
            !_phoneinvalid &&
            !_emailinvalid &&
            !_phoneinvalid) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Login()),
          );
        }
      },
    );
  }
}

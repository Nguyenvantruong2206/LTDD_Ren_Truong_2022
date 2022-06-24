import 'package:flutter/material.dart';
import 'package:flutter_application_2/login/login.dart';

class quenmatkhau extends StatefulWidget {
  @override
  _quenmatkhauState createState() => _quenmatkhauState();
}

class _quenmatkhauState extends State<quenmatkhau> {
  TextEditingController _emailcontroller = new TextEditingController();

  var _emailerro = "Email không hợp lệ! Vui lòng nhập đã đăng ký";
  var _emailinvalid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Image(
                image: AssetImage("assets/images/1.png"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 2),
                child: Text(
                  "Welcome Information Technology!",
                  style: TextStyle(fontSize: 22, color: Color(0xff333333)),
                ),
              ),
              Text(
                "Forgot password with simple steps",
                style: TextStyle(fontSize: 16, color: Color(0xff606470)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  controller: _emailcontroller,
                  decoration: InputDecoration(
                    labelText: "Email",
                    errorText: _emailinvalid ? _emailerro : null,
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
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: RaisedButton(
                    child: Text(
                      "SAVE",
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
              Container(
                height: 30,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Login()),
                        );
                      },
                      child: Text(
                        "LOGIN NOW",
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
      ),
    );
  }

  void _onsignclicked() {
    setState(() {
      if (_emailcontroller.text.length < 5 ||
          !_emailcontroller.text.contains("@caothang.edu.vn")) {
        _emailinvalid = true;
      } else {
        _emailinvalid = false;
        if (!_emailinvalid) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Login()));
        }
      }
    });
  }
}

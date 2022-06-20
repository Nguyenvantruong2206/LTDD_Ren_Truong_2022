import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/signup.dart';

class welcome extends StatefulWidget {
  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  TextEditingController _emailcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
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
                "CDTH19PMC",
                style: TextStyle(fontSize: 16, color: Color(0xff333333)),
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: SizedBox(
                  width: 300,
                  height: 46,
                  child: RaisedButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(29),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Login(),
                        ),
                      );
                    },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                child: SizedBox(
                  width: 300,
                  height: 46,
                  child: RaisedButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(29),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => RegisterPage()),
                      );
                    },
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

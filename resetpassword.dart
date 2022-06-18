import 'package:flutter/material.dart';
import 'package:flutter_application_1/profiles/profiles.dart';

class Resetpassword extends StatefulWidget {
  @override
  State<Resetpassword> createState() => _resetpassword();
}

class _resetpassword extends State<Resetpassword> {
  bool hidePassWord1 = true;
  bool hidePassWord2 = true;
  bool hidePassWord3 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "RESET PASSWORD",
                style: TextStyle(
                  fontSize: 25,
                  letterSpacing: 1.5,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    textInputAction: TextInputAction.done,
                    obscureText: hidePassWord1,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: Colors.blue)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      hintText: "Mật khẩu cũ",
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            hidePassWord1 = !hidePassWord1;
                          });
                        },
                        child: Icon(hidePassWord1
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                )),
            const SizedBox(height: 10),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    textInputAction: TextInputAction.done,
                    obscureText: hidePassWord2,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: Colors.blue)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      hintText: "Mật khẩu mới",
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            hidePassWord2 = !hidePassWord2;
                          });
                        },
                        child: Icon(hidePassWord2
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                )),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      textInputAction: TextInputAction.done,
                      obscureText: hidePassWord3,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(color: Colors.blue)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        hintText: "Xác nhập mật khẩu",
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              hidePassWord3 = !hidePassWord3;
                            });
                          },
                          child: Icon(hidePassWord3
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(15),
                          child: Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 55,
              width: 200,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                onPressed: () {},
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "Thay đổi",
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}

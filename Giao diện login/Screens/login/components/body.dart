import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/login/components/background.dart';
import 'package:flutter_application_1/Screens/login/components/textfiled.dart';
import 'package:flutter_application_1/components/RoundedPassword.dart';
import 'package:flutter_application_1/components/Roundedinput.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // cung cấp tổng chiều cao và chiều rộng của màn hình

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.3,
            ),
            // ignore: prefer_const_constructors
            RoundedInputField(
              hinText: "Vui lòng nhập email",
              onChange: (value) {},
            ),
            RoundedPassword(
              onChanged: (Value) {},
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 200,
              height: 40,
              child: ElevatedButton(
                style: ButtonStyle(),
                onPressed: () {},
                child: Text("Login"),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Bạn đã đăng ký tài khoản chưa?",
                  style: TextStyle(color: kPrimaryColor),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Sign%20Up/signup.dart';
import 'package:flutter_application_1/Screens/login/components/background.dart';
import 'package:flutter_application_1/Screens/login/components/textfiled.dart';
import 'package:flutter_application_1/components/RoundedPassword.dart';
import 'package:flutter_application_1/components/Roundedinput.dart';
import 'package:flutter_application_1/components/dieuhuongsignup.dart';
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
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.3,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              hinText: "Vui lòng nhập email",
              onChange: (value) {},
            ),
            RoundedPassword(
              onChanged: (Value) {},
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 150,
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
            dieuhuongsignup(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUp();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

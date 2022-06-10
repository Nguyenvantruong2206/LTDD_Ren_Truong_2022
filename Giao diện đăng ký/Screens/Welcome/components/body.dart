import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Sign%20Up/signup.dart';
import 'package:flutter_application_1/Screens/Welcome/components/background.dart';
import 'package:flutter_application_1/Screens/login/login_LTDD.dart';
import 'package:flutter_application_1/components/Rounded_button.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_svg/svg.dart';

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
              "WELCOME TO CKC",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              height: 40,
              child: ElevatedButton(
                style: ButtonStyle(),
                child: Text("Login"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Login_LTDD();
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              height: 40,
              child: ElevatedButton(
                child: Text("Sign Up"),
                onPressed: () {
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
            ),
          ],
        ),
      ),
    );
  }
}

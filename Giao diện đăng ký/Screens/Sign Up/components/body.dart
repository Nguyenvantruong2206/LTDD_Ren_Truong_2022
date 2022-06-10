import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Sign%20Up/components/backgroud.dart';
import 'package:flutter_application_1/components/RoundedPassword.dart';
import 'package:flutter_application_1/components/Rounded_button.dart';
import 'package:flutter_application_1/components/Rounded_signup.dart';
import 'package:flutter_application_1/components/Roundedinput.dart';
import 'package:flutter_application_1/components/rounded_againpassword.dart';
import 'package:flutter_application_1/components/rounded_date.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Widget child;

  const Body({
    super.key,
    required this.child,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Backgroud(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SvgPicture.asset(
            "assets/icons/signup.svg",
            height: size.height * 0.35,
          ),
          RoundedInputField(
              hinText: "Vui lòng nhập Email", onChange: (Value) {}),
          RoundedPassword(onChanged: (value) {}),
          againpassword(
            onChanged: (value) {},
          ),
          Rounded_signup(
            date: "Nhập ngày sinh",
            onChanged: (Value) {},
          ),
          SizedBox(
            height: size.height * 0.03,
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
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Sign%20Up/signup.dart';
import 'package:flutter_application_1/constants.dart';

class dieuhuongsignup extends StatelessWidget {
  final bool login;
  final Function press;
  const dieuhuongsignup({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Bạn đã đăng ký tài khoản chưa?" : "Already have an account?",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SignUp();
                },
              ),
            );
          },
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

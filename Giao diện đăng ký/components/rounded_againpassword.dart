import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/Rounded_signup.dart';
import 'package:flutter_application_1/constants.dart';

class againpassword extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const againpassword({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TestfiledLTDD(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Nhập lại Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

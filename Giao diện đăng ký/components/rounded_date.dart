import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/Rounded_signup.dart';
import 'package:flutter_application_1/constants.dart';

class Rounded_signup extends StatelessWidget {
  final String date;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const Rounded_signup({
    Key? key,
    required this.date,
    this.icon = Icons.calendar_month,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TestfiledLTDD(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: date,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

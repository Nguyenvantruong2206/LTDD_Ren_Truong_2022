import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/login/components/textfiled.dart';
import 'package:flutter_application_1/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hinText;
  final IconData icon;
  final ValueChanged<String> onChange;
  const RoundedInputField({
    Key? key,
    required this.hinText,
    this.icon = Icons.person,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChange,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hinText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

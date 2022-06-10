import 'package:flutter/material.dart';

class Dangky extends StatefulWidget {
  @override
  _DangkyState createState() => _DangkyState();
}

class _DangkyState extends State<Dangky> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Đăng ký',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            )
          ]),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Icon(
                Icons.person_pin,
                size: 150,
                color: Colors.grey[400],
              )),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Tên Tài khoản',
                  errorText: 'Tài khoản không hợp lệ'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Email', errorText: 'Email không hợp lệ'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Mật khẩu', errorText: 'mật khẩu không hợp lệ'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Xác nhận Mật khẩu',
                  errorText: 'Xác nhận mật khẩu không trùng với mật khẩu'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Container(
              width: 300,
              height: 60,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.blue.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 3))
              ], borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Tạo tài khoản',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(255, 36, 113, 177)),
                  )
                ],
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Container(
                width: 300,
                height: 60,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.blue.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 3))
                ], borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Đăng nhập',
                      style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 36, 113, 177)),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

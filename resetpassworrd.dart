import 'package:flutter/material.dart';
import 'package:demo/profilepage.dart';
import 'package:demo/thongbao.dart';
import 'package:demo/profile.dart';

class Resetpassword extends StatefulWidget {
  @override
  State<Resetpassword> createState() => _resetpassword();
}
class _resetpassword extends State<Resetpassword> {
  bool hidePassWord=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 212, 184, 240),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 253, 253, 253),
          ),
    onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: ((context) => Profile()))),
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
      Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Thay đổi mật khẩu",
              style: TextStyle(
                fontSize: 35,
                letterSpacing: 1.5,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
              padding:  EdgeInsets.symmetric(vertical: 20),
              child:Padding(padding: EdgeInsets.all(10),
                child: TextField(
                  textInputAction: TextInputAction.done,
                  obscureText: hidePassWord,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.blue
                      )
                    ),
                    enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.blue,
                      ),
                    ),
                    hintText: "Mật khẩu cũ",
                    suffixIcon:InkWell(
                      onTap:() {
                        setState(() {
                       hidePassWord=!hidePassWord;
                        });
                        },
                      child: Icon(Icons.visibility_off),
    ),
                    prefixIcon: Padding(
                      padding:  EdgeInsets.all(10),
                      child: Icon(Icons.lock,color: Colors.blue,),
                    ),
                  ),
                ),
              )
          ),
          const SizedBox(height: 10),
          Padding(
              padding:  EdgeInsets.symmetric(vertical: 20),
              child:Padding(padding: EdgeInsets.all(10),
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.blue
                        )
                    ),
                    enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.blue,
                      ),
                    ),
                    hintText: "Mật khẩu mới",
                    prefixIcon: Padding(
                      padding:  EdgeInsets.all(10),
                      child: Icon(Icons.lock,color: Colors.blue,),
                    ),
                  ),
                ),
              )
          ),
          const SizedBox(height: 10),
          Padding(
              padding:  EdgeInsets.symmetric(vertical: 20),
              child: Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: [
                  Padding(padding: EdgeInsets.all(10),
                    child: TextField(
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(color: Colors.blue
                            )
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: Colors.blue
                          ),
                        ),
                        hintText: "Xác nhập mật khẩu",
                        prefixIcon: Padding(
                          padding:  EdgeInsets.all(15),
                          child: Icon(Icons.lock,color: Colors.blue,),
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
              onPressed: () {},
              color: Colors.blue,
              child: Center(
                child: Text(
                  "Xác nhận thay đổi",
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
  ]
    ),
    );
  }
}


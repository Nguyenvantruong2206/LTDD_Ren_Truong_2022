import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, value) {
        return [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(25, 10, 25, 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Bảng Tin CKC',
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          )
        ];
      },
      body: Container(),
    );
  }
}

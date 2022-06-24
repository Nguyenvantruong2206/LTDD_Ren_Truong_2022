import 'package:flutter/material.dart';
import 'package:flutter_application_2/phongdaotao/category.dart';
import 'package:flutter_application_2/phongdaotao/values.dart';

class CategorySelector1 extends StatefulWidget {
  const CategorySelector1({Key? key}) : super(key: key);

  @override
  _CategorySelector1State createState() => _CategorySelector1State();
}

class _CategorySelector1State extends State<CategorySelector1> {
  List<Category1> categories1 = StaticValues().categories1;
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            categories1.length,
            (index) {
              Category1 category1 = categories1[index];
              bool isSelected = index == selectedCategoryIndex;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    this.selectedCategoryIndex = index;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 150),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: isSelected ? Colors.black : Colors.white),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  child: Text(
                    category1.name1,
                    style: TextStyle(
                        fontSize: 15,
                        color: isSelected ? Colors.white : Colors.black),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
